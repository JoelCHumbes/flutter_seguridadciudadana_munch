import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_audio_recorder2/flutter_audio_recorder2.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
//import 'package:flutter_video_compress/flutter_video_compress.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/provider/location_provider.dart';
import 'package:seguridad_ciudadana/provider/validate_provider.dart';
import 'package:seguridad_ciudadana/services/api_service.dart';
import 'package:seguridad_ciudadana/utils/preference.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';
import 'package:seguridad_ciudadana/video/camara_page.dart';
import 'dart:io' as io;
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:http/http.dart' as http;
import 'package:seguridad_ciudadana/utils/url_servicio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:video_player/video_player.dart';
//import 'package:video_compress/video_compress.dart';
import '../provider/video_provider.dart';

class FormReporteWidget extends StatefulWidget {
  int type;
  final LocalFileSystem localFileSystem;

  //Set<Marker> markers = {};

  FormReporteWidget({localFileSystem, required this.type})
      : this.localFileSystem = localFileSystem ?? LocalFileSystem();

  @override
  State<FormReporteWidget> createState() => _FormReporteWidgetState();
}

class _FormReporteWidgetState extends State<FormReporteWidget> {
  ApiService apiService = ApiService();
  Preference preference = Preference();
  final Completer<GoogleMapController> _controller = Completer();

  final TextEditingController _descripcionController = TextEditingController();

  final ImagePicker _imagePicker = ImagePicker();
  XFile? _imageFile;

  final ImagePicker _imagePickerTwo = ImagePicker();
  XFile? _imageFileTwo;

  File? fileAudio;

  bool t = false;

  FlutterAudioRecorder2? _recorder;
  Recording? _current;
  RecordingStatus _currentStatus = RecordingStatus.Unset;

  @override
  void initState() {
    // TODO: implement initState
    print("form_reporte_widget - initState");
    super.initState();
    _init();
    _fabHeight = _initFabHeight;
    establecer_posicion_inicial();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      VideoProvider videoProvider =
          Provider.of<VideoProvider>(context, listen: false);
      videoProvider.setPathVideo("");
    });
  }

  establecer_posicion_inicial() async {
    LocationProvider locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    locationProvider.latitude = await Preference.getLatitude();
    locationProvider.longitude = await Preference.getLongitude();
    print(
        "form_reporte_widget: ${await Preference.getLatitude()} - ${await Preference.getLongitude()}");
    initCurrentPosition();
  }

  getImageCamera() async {
    _imageFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (_imageFile != null) {
      _imageFile = XFile(_imageFile!.path);
      _isVisible_nueva_foto = true;
      setState(() {});
    }
  }

  getImageCameraTwo() async {
    _imageFileTwo = await _imagePickerTwo.pickImage(
      source: ImageSource.camera,
    );
    if (_imageFileTwo != null) {
      setState(() {});
    }
  }

  removeImage(int index) async {
    if (index == 1) {
      _imageFile = null;
    } else {
      _imageFileTwo = null;
    }
    setState(() {});
  }

  bool isInvisible = true;
  bool _isVisible_nueva_foto = false;

  /////DATOS SLIDING //////////////////
  final double _initFabHeight = 120.0;
  late double _fabHeight;
  double _panelHeightOpen = 575.0;
  double _panelHeightClosed = 95.0;

  /////Ubicacion
  initCurrentPosition() async {
    LocationProvider locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    Position currentPosition = await Geolocator.getCurrentPosition();
    locationProvider.latitude = currentPosition.latitude;
    locationProvider.longitude = currentPosition.longitude;

    GoogleMapController googleMapController = await _controller.future;
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            zoom: 16,
            target:
                LatLng(currentPosition.latitude, currentPosition.longitude))));
    //Coordinates coordinates = Coordinates(locationProvider.latitude, locationProvider.longitude);
    //List<Address> address = await Geocoder.local.findAddressesFromCoordinates(coordinates);

    List<Placemark> places = await placemarkFromCoordinates(
        locationProvider.latitude, locationProvider.longitude);
    locationProvider.direccion = places.first.street!;
    print(places.first.street);

    await Preference.saveLatitude(currentPosition.latitude);
    await Preference.saveLongitude(currentPosition.longitude);
    print(
        "form_reporte_widget: ${await Preference.getLatitude()} - ${await Preference.getLongitude()}");
    print('WWWWWWWWWWWWWWWWWWWWW');
  }

  Future<bool> enviarReporte() async {
    print(widget.type);
    LocationProvider locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    Uri _urlToken = Uri.parse("$pathToken/v1/getToken");
    Uri _url = Uri.parse("$pathProduction/incident/addIncident");
    http.Response tokenResponse = await http.get(
      _urlToken,
      headers: {
        "Content-Type": "application/json",
        "apikey": "T0JblH!pQ!q\$u5LS#@yVdjVM402z8Mt14tHBq4LP",
      },
    );

    final token = jsonDecode(tokenResponse.body);
    print("token: ${token['data']}");

    if (tokenResponse.statusCode == 200) {
      VideoProvider videoProvider =
          Provider.of<VideoProvider>(context, listen: false);
      print(
          "videoProvider.pathVideo: ${videoProvider.pathVideo.split("/").last}");

      var request = http.MultipartRequest('POST', _url);
      request.headers.addAll({
        "Content-Type": "application/json",
        "Authorization": "Bearer ${token['data']}",
      });
      //Agregar parametro uploadManifest
      String datax =
          '{"user_token":"${await Preference.getToken()}","user_id":${await Preference.getUser_ID()},"incident_type_id":"${widget.type}","incident_description":"${_descripcionController.text}","latitude":"${locationProvider.latitude}","longitude": "${locationProvider.longitude}","address":"${locationProvider.direccion}","created_by":"Developer Android"}';

      print(datax);
      request.fields['uploadManifest'] =
          '{"user_token":"${await Preference.getToken()}","user_id":${await Preference.getUser_ID()},"incident_type_id":"${widget.type}","incident_description":"${_descripcionController.text}","latitude":"${locationProvider.latitude}","longitude": "${locationProvider.longitude}","address":"${locationProvider.direccion}","created_by":"Developer Android"}';

      // print("Imagenn:::::: ${_imageFile!.path}");
      // print("ImagennTipoooo:::::: ${_imageFile!.mimeType}");
      // print("ImagennName:::::: ${_imageFile!.name}");

      if (_imageFile != null) {
        File compressedFile = await FlutterNativeImage.compressImage(
            _imageFile!.path,
            quality: 80,
            targetWidth: 600,
            targetHeight: 300);
        print("Conversion imagen1 exitoso");
        request.files.add(
          await http.MultipartFile.fromPath(
            'img',
            compressedFile!.path,
          ),
        );
        print("Preparación de envio imagen1 exitoso");
      }

      if (_imageFileTwo != null) {
        File compressedFile = await FlutterNativeImage.compressImage(
            _imageFileTwo!.path,
            quality: 80,
            targetWidth: 600,
            targetHeight: 300);
        print("Conversion imagen2 exitoso");
        request.files.add(
          await http.MultipartFile.fromPath(
            'img',
            compressedFile!.path,
          ),
        );
        print("Preparación de envio imagen2 exitoso");
      }

      // Agregar Audio
      if (fileAudio != null) {
        request.files.add(
          http.MultipartFile(
            'audio',
            File(fileAudio!.path).readAsBytes().asStream(),
            File(fileAudio!.path).lengthSync(),
            filename: fileAudio!.path.split("/").last,
          ),
        );
      }

      Directory directory = await getApplicationDocumentsDirectory();
      FlutterFFmpeg ffmpeg = FlutterFFmpeg();
      await ffmpeg
          .execute(
              "-y -i ${videoProvider.pathVideo} -c:v mpeg4  ${directory.path}/videocompress.mp4")
          .then((value) {
        if (value == 0) {
          print("Conversion video exitoso");
          videoProvider.pathVideo = "${directory.path}/videocompress.mp4";
          request.files.add(
            http.MultipartFile(
              'video',
              File(videoProvider.pathVideo).readAsBytes().asStream(),
              File(videoProvider.pathVideo).lengthSync(),
              filename: videoProvider.pathVideo.split("/").last,
            ),
          );
          print("Preparación de envio video exitoso");
        }
      });

      /*if (videoProvider.pathVideo.isNotEmpty) {
         request.files.add(
          http.MultipartFile(
            'video',
            File(videoProvider.pathVideo).readAsBytes().asStream(),
            File(videoProvider.pathVideo).lengthSync(),
            filename: videoProvider.pathVideo.split("/").last,
          ),
        );
      }*/

      var response = await request.send();
      print("=-===================================== Alerta!");
      if (response.statusCode == 200) {
        print("Reporte");
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  void alertRegistroExitoso(BuildContext context) {
    print("Mostrar Alerta");
    showDialog(
        //barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 0,
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Lottie.asset(
                        "assets/lottie/enviarone.json",
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "¡ENVIO EXITOSO!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            content: Text(
              textAlign: TextAlign.center,
              "Estimado(a),su alerta ha sido recibido en la Central de Operaciones Chorrillos, en breve nos estaremos comunicando con usted.",
              style: TextStyle(fontSize: 12),
            ),
            actions: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff174D75),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Finalizar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //print("MI POSICION ${initCurrentPosition()}");
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xff006DA2),
        title: Text(
          "Panel Reportes de Incidentes",
          style: GoogleFonts.anekKannada(
            fontSize: 18,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SlidingUpPanel(
                  maxHeight: _panelHeightOpen,
                  minHeight: _panelHeightClosed,
                  parallaxEnabled: true,
                  parallaxOffset: .5,
                  body: _body(),
                  panel: _panel(),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.0),
                      topRight: Radius.circular(18.0)),
                  onPanelSlide: (double pos) => setState(
                    () {
                      _fabHeight =
                          pos * (_panelHeightOpen - _panelHeightClosed) +
                              _initFabHeight;
                    },
                  ),
                ),
                /* Positioned(
                  right: 20.0,
                  bottom: _fabHeight,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.gps_fixed,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.white,
                  ),
                ),*/
              ],
            ),
          ),
          Consumer<ValidatorProvider>(
            builder: (context, provider, _) {
              return provider.isLoading
                  ? Container(
                      color: Colors.white70,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xff006DA2), width: 2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    //CircularProgressIndicator(),
                                    Lottie.asset("assets/lottie/cargandoo.json",
                                        height: 70),
                                    const Divider(
                                      height: 12,
                                    ),
                                    Text(
                                      "¡PROCESANDO ALERTA!",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    spacingHeigth12,
                                    Text(
                                      "Se estan cargando los datos",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                    Text(
                                      "por favor espere....",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _panel() {
    /*VideoProvider videoProvider =
        Provider.of<VideoProvider>(context, listen: false);*/
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          spacingHeigth12,
          Center(
            child: Image.asset(
              "assets/images/flecha_arriba.png",
              height: 25,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              "assets/images/reporte_incidente.png",
              width: 180,
            ),
          ),
          spacingHeigth6,
          Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xffD96E6C),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    spacingHeigth4,
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              getImageCamera();
                            },
                            child: Image.asset(
                              "assets/images/fotocam.png",
                              height: 27,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/presion.png",
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                getImageCamera();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _imageFile != null
                                    ? ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        child: Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xff184F78),
                                            image: DecorationImage(
                                              image: FileImage(
                                                  File(_imageFile!.path)),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 12,
                                                right: 12,
                                                child: InkWell(
                                                  onTap: () {
                                                    removeImage(1);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.all(6.0),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Icon(Icons.close),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Image.asset(
                                          "assets/images/imgs.png",
                                        ),
                                      ),
                              ),
                            ),
                            Visibility(
                              visible: _isVisible_nueva_foto,
                              child: InkWell(
                                onTap: () {
                                  getImageCameraTwo();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: _imageFileTwo != null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                          child: Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color: Color(0xff243151),
                                              image: DecorationImage(
                                                image: FileImage(
                                                    File(_imageFileTwo!.path)),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 12,
                                                  right: 12,
                                                  child: InkWell(
                                                    onTap: () {
                                                      removeImage(2);
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(Icons.close),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(
                                            "assets/images/massi.png",
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    spacingHeigth8,
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xff006DA0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // color: Color(0xff253252),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 70,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      maxLines: 5,
                                      controller: _descripcionController,
                                      decoration: InputDecoration(
                                          hintText:
                                              "Agregar descripcion de alerta",
                                          hintStyle: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black38,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          prefixIcon: Icon(
                                            Icons.textsms,
                                            size: 30.0,
                                            color: Colors.black45,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            borderSide: const BorderSide(
                                                color: Colors.grey),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            borderSide: const BorderSide(
                                                color: Colors.grey),
                                          )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    spacingHeigth2,
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xff17B2B6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/images/audio.png",
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                    spacingHeigth8,
                    Center(
                      child: new Padding(
                        padding: new EdgeInsets.all(0.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                    onPressed: () {
                                      switch (_currentStatus) {
                                        case RecordingStatus.Initialized:
                                          {
                                            _start();
                                            break;
                                          }
                                        case RecordingStatus.Recording:
                                          {
                                            _pause();
                                            break;
                                          }
                                        case RecordingStatus.Paused:
                                          {
                                            _resume();
                                            break;
                                          }
                                        case RecordingStatus.Stopped:
                                          {
                                            _init();
                                            break;
                                          }
                                        default:
                                          break;
                                      }
                                    },
                                    //child: _buildText(_currentStatus),
                                    child: new Row(
                                      children: [
                                        Icon(
                                          Icons.mic,
                                          color: Colors.white,
                                        ),
                                        spacingWidth2,
                                        _buildText(_currentStatus),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Colors.lightBlue,
                                      ),
                                    ),
                                  ),
                                ),
                                new TextButton(
                                  onPressed:
                                      _currentStatus != RecordingStatus.Unset
                                          ? _stop
                                          : null,
                                  child: new Row(
                                    children: [
                                      Icon(
                                        Icons.stop_circle_sharp,
                                        color: Colors.white,
                                      ),
                                      spacingWidth2,
                                      Text(
                                        "Stop",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(0xffE60026),
                                    ),
                                  ),
                                ),
                                spacingWidth8,
                                new TextButton(
                                  onPressed: onPlayAudio,
                                  child: new Row(
                                    children: [
                                      Icon(
                                        Icons.play_circle_outline_outlined,
                                        color: Colors.white,
                                      ),
                                      spacingWidth2,
                                      Text(
                                        "Play",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(0xff1F7B00),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //DATOS DE LA GRABACION DE VOZ
                            //new Text("Status : $_currentStatus"),
                            // new Text('Avg Power: ${_current?.metering?.averagePower}'),
                            // new Text('Peak Power: ${_current?.metering?.peakPower}'),
                            // new Text("File path of the record: ${_current?.path}"),
                            // new Text("Format: ${_current?.audioFormat}"),
                            //new Text("isMeteringEnabled: ${_current?.metering?.isMeteringEnabled}"),
                            // new Text("Extension : ${_current?.extension}"),
                            Text(
                              "La grabacion de Audio solo durara 4 segundos",
                            ),
                            new Text(
                              "Duracion: ${_current?.duration.toString()}",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    spacingHeigth4,
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xffE8A846),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    spacingHeigth2,
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CameraPage()));
                            },
                            child: Image.asset(
                              "assets/images/videos.png",
                              height: 28,
                            ),
                          ),
                        ),
                        spacingWidth8,
                        Consumer<VideoProvider>(
                          builder: (context, provider, _) {
                            return provider.pathVideo.isNotEmpty
                                ? Expanded(
                                    child: Text(
                                      provider.pathVideo.split("/").last,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                : const SizedBox();
                          },
                        ),
                      ],
                    ),
                    spacingHeigth8,
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            /*VideoProvider videoProvider =
                                            Provider.of<VideoProvider>(context,
                                                listen: false);

                                        Directory directory =
                                            await getApplicationDocumentsDirectory();
                                        FlutterFFmpeg ffmpeg = FlutterFFmpeg();
                                        ffmpeg
                                            .execute(
                                                "-y -i ${videoProvider.pathVideo} -c:v mpeg4  ${directory.path}/videocompress.mp4")
                                            .then((value) {
                                          if (value == 0) {
                                            videoProvider.pathVideo =
                                                "${directory.path}/videocompress.mp4";

                                           // enviarReporte();
                                           // alertRegistroExitoso(context);
                                          }
                                        });*/

                            /*MediaInfo? mediaInfo = await VideoCompress.compressVideo(
                                            //,
                                            videoProvider.pathVideo,
                                            quality: VideoQuality.MediumQuality,
                                            deleteOrigin: false,
                                            includeAudio: true// It's false by default
                                        );
                                        print(VideoCompress.isCompressing);
                                        */
                            bool t = false;
                            ValidatorProvider validatorProvider =
                                Provider.of<ValidatorProvider>(context,
                                    listen: false);
                            validatorProvider.changeLoading(true);
                            t = await enviarReporte();
                            if (t == true) {
                              alertRegistroExitoso(context);
                              validatorProvider.changeLoading(false);
                              print("Envio Exitoso");
                            } else {
                              print("t no es true");
                              validatorProvider.changeLoading(false);
                            }

                            //MediaInfo? media = await VideoCompress.compressVideo(videoProvider.pathVideo);

                            //MediaInfo mediax = await VideoCompress.getMediaInfo(videoProvider.pathVideo);

                            //print(media);
                          },
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xff006DA2),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffD9E7EF),
                                    spreadRadius: 5, // Propagación de la sombra (opcional)
                                    blurRadius: 7, // Difuminado de la sombra (opcional)
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                "ENVIAR ALERTA",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    /*Text(
                    "Video:${videoProvider.pathVideo.split("/").last}",
                  ), */
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(-11.261080, -76.331244),
            zoom: 10,
          ),
          onMapCreated: (mapController) {
            _controller.complete(mapController);
          },
          //markers: ,
          //mapType: MapType.satellite,
          myLocationEnabled: true,
        ),

        /* Container(
          margin: EdgeInsets.only(top: 80, right: 10),
          alignment: Alignment.topRight,
          child: Column(
              children: <Widget>[
                FloatingActionButton(
                    child: Icon(Icons.layers),
                    elevation: 5,
                    backgroundColor: Colors.teal[200],
                    onPressed: () {
                      _changeMapType();
                      print('Changing the Map Type');
                    }),
              ]),
        ), */
      ],
    );
  }

  _init() async {
    try {
      bool hasPermission = await FlutterAudioRecorder2.hasPermissions ?? false;

      if (hasPermission) {
        String customPath = '/flutter_audio_recorder_';
        io.Directory appDocDirectory;
//        io.Directory appDocDirectory = await getApplicationDocumentsDirectory();
        if (io.Platform.isIOS) {
          appDocDirectory = await getApplicationDocumentsDirectory();
        } else {
          appDocDirectory = (await getExternalStorageDirectory())!;
        }

        // can add extension like ".mp4" ".wav" ".m4a" ".aac"
        customPath = appDocDirectory.path +
            customPath +
            DateTime.now().millisecondsSinceEpoch.toString();

        // .wav <---> AudioFormat.WAV
        // .mp4 .m4a .aac <---> AudioFormat.AAC
        // AudioFormat is optional, if given value, will overwrite path extension when there is conflicts.
        _recorder =
            FlutterAudioRecorder2(customPath, audioFormat: AudioFormat.WAV);

        await _recorder!.initialized;
        // after initialization
        var current = await _recorder!.current(channel: 0);
        print(current);
        // should be "Initialized", if all working fine
        setState(() {
          _current = current;
          _currentStatus = current!.status!;
          print(_currentStatus);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("Debes Aceptar los Permisos")));
      }
    } catch (e) {
      print(e);
    }
  }

  _start() async {
    try {
      await _recorder!.start();
      var recording = await _recorder!.current(channel: 0);
      setState(() {
        _current = recording;
      });

      const tick = const Duration(milliseconds: 50);
      new Timer.periodic(tick, (Timer t) async {
        if (_currentStatus == RecordingStatus.Stopped) {
          t.cancel();
        }

        var current = await _recorder!.current(channel: 0);
        // print(current.status);
        setState(() {
          _current = current;
          _currentStatus = _current!.status!;
        });
      });
      Future.delayed(Duration(seconds: 5), () async {
        await _recorder!.stop();
        setState(() {});
      });
    } catch (e) {
      print(e);
    }
  }

  _resume() async {
    await _recorder!.resume();
    setState(() {});
  }

  _pause() async {
    await _recorder!.pause();
    setState(() {});
  }

  _stop() async {
    var result = await _recorder!.stop();
    print("Stop recording: ${result!.path}");
    print("Stop recording: ${result.duration}");
    fileAudio = widget.localFileSystem.file(result.path);
    //print("File length: ${await fileAudio.length()}");
    setState(() {
      _current = result;
      _currentStatus = _current!.status!;
    });
  }

  Widget _buildText(RecordingStatus status) {
    var text = "";
    switch (_currentStatus) {
      case RecordingStatus.Initialized:
        {
          text = 'Grabar';
          break;
        }
      case RecordingStatus.Recording:
        {
          text = 'Pause';
          break;
        }
      case RecordingStatus.Paused:
        {
          text = 'Resume';
          break;
        }
      case RecordingStatus.Stopped:
        {
          text = 'Nuevo';
          break;
        }
      default:
        break;
    }
    return Text(text, style: TextStyle(color: Colors.white));
  }

  void onPlayAudio() async {
    AudioPlayer audioPlayer = AudioPlayer();
    await audioPlayer.play(UrlSource(_current!.path!));
  }
}

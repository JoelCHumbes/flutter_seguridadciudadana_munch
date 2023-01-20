import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_audio_recorder2/flutter_audio_recorder2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seguridad_ciudadana/utils/general/colors.dart';
import 'package:seguridad_ciudadana/video/camara_page.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';
import 'dart:io' as io;

class FormReporteWidget extends StatefulWidget {
  final LocalFileSystem localFileSystem;

  FormReporteWidget({localFileSystem})
      : this.localFileSystem = localFileSystem ?? LocalFileSystem();

  @override
  State<FormReporteWidget> createState() => _FormReporteWidgetState();
}

class _FormReporteWidgetState extends State<FormReporteWidget> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _imageFile;

  final ImagePicker _imagePickerTwo = ImagePicker();
  XFile? _imageFileTwo;

  FlutterAudioRecorder2? _recorder;
  Recording? _current;
  RecordingStatus _currentStatus = RecordingStatus.Unset;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }

  getImageCamera() async {
    _imageFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (_imageFile != null) {
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

  bool isInvisible = true;
  bool _isVisible_nueva_foto = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xff253252),
        title: Text(
          "Reporta tu Incidente",
          style: GoogleFonts.anekKannada(
            fontSize: 18,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-11.261080, -76.331244),
                      zoom: 8,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff253252),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      spacingHeigth8,
                      Container(
                        width: 48,
                        height: 4.5,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F4F5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      spacingHeigth4,
                      Text(
                        "Por favor ingresa todos los datos solicitados a  continuación ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.6,
                          color: Color(0xffF2F4F5).withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      spacingHeigth12,
                      Text(
                        "Fotos de Incidente",
                        style: GoogleFonts.acme(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      spacingHeigth8,
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
                                            height: 140,
                                            width: 140,
                                            decoration: BoxDecoration(
                                              color: Color(0xff243151),
                                              image: DecorationImage(
                                                image: FileImage(
                                                    File(_imageFile!.path)),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 130,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xffF2F4F5),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .delete_forever_rounded,
                                                              color: Colors.red,
                                                              size: 22,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 110,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(10),
                                            dashPattern: [4, 4],
                                            color: Color(0xff8F9EC7),
                                            strokeWidth: 2,
                                            child: Card(
                                              color: Color(0xff243151),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .camera_alt_rounded,
                                                          color:
                                                              Color(0xff8F9EC7),
                                                          size: 60,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Presiona aqui",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            spacingWidth4,
                                                            Text(
                                                              "para añadir fotos.",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff8F9EC7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
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
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                color: Color(0xff243151),
                                                image: DecorationImage(
                                                  image: FileImage(File(
                                                      _imageFileTwo!.path)),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    height: 130,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xffF1F3F4),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50),
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .delete_forever_rounded,
                                                                color:
                                                                    Colors.red,
                                                                size: 22,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: 130,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: DottedBorder(
                                              borderType: BorderType.RRect,
                                              radius: Radius.circular(10),
                                              dashPattern: [4, 4],
                                              color: Color(0xff8F9EC7),
                                              strokeWidth: 2,
                                              child: Card(
                                                color: Color(0xff243151),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .add_a_photo_rounded,
                                                            color: Color(
                                                                0xff8F9EC7),
                                                            size: 60,
                                                          ),
                                                          spacingHeigth4,
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "Añadir otra foto",
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xff8F9EC7),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      spacingHeigth14,
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xff354670),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      spacingHeigth8,
                      Text(
                        "Audio de Incidente",
                        style: GoogleFonts.aleo(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: new Padding(
                          padding: new EdgeInsets.all(5.0),
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
                              new Text(
                                "Duracion: ${_current?.duration.toString()}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacingHeigth4,
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xff354670),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      spacingHeigth4,
                      Text(
                        "Videos de Incidente",
                        style: GoogleFonts.aleo(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      spacingHeigth4,

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          width: 130,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.emergency_recording_rounded,
                                 color: Colors.red,
                                ),
                                spacingWidth4,
                                Text(
                                  "Grabar Video",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      spacingHeigth8,
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xff354670),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      /*Text(
                        "Observaciones de Incidente",
                        style: GoogleFonts.aleo(
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff253252),
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
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        //controller: _chatController,
                                        decoration: InputDecoration(
                                            hintText:
                                                "Ingrese sus Observaciones",
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

                                            /*
                                              suffixIcon: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.mic,
                                                      size: 30,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      getImageCamera();
                                                    },
                                                    icon: Icon(
                                                      Icons.camera_alt,
                                                      size: 30,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 6.0,
                                                  ),
                                                ],
                                              ),*/
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              borderSide: BorderSide.none,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              borderSide: BorderSide.none,
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7.0,
                                    ),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                              color: Color(0xff3949AB),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.send,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),

                                        Text(
                                          "Enviar",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
    File file = widget.localFileSystem.file(result.path);
    print("File length: ${await file.length()}");
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

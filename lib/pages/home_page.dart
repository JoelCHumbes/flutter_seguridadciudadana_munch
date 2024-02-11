import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:seguridad_ciudadana/pages/alertas_page.dart';
import 'package:seguridad_ciudadana/pages/datos_usuario_page.dart';
import 'package:seguridad_ciudadana/pages/notificaciones_page.dart';
import 'package:seguridad_ciudadana/pages/registro_familiares.dart';
import 'package:seguridad_ciudadana/pages/servicios_page.dart';
import 'package:seguridad_ciudadana/pages/setting_new_page.dart';
import 'package:seguridad_ciudadana/pages/setting_user_page.dart';
import 'package:seguridad_ciudadana/pages/validacion_correo.dart';
import 'package:seguridad_ciudadana/provider/location_provider.dart';
import 'package:seguridad_ciudadana/services/api_service.dart';
import 'package:seguridad_ciudadana/services/socket.dart';
import 'package:seguridad_ciudadana/utils/assets_svg.dart';
import 'package:seguridad_ciudadana/utils/general/colors.dart';
import 'package:seguridad_ciudadana/utils/preference.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';

import '../services/socket_service.dart';


class HomePage extends StatefulWidget {
  int? indexPage = 0;
  int? commentId = 0;
  HomePage({this.indexPage,this.commentId});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();
  //Socket socketService = Socket();
  int indexPage = 0;

  void initState() {
    super.initState();
    if(widget.indexPage != null){
      indexPage = widget.indexPage!;
      print("HOME_PAGE: cargado desde notificacion");
      setState(() {

      });
    }
    VerificarFamiliaresRegistrados();
    VerificarValidacionCorreo();
    //Socket.context = context;
    /*socketService.socketConexion();
    socketService.listenSocket();*/
    //re_activar_socket();
    establecer_posicion_inicial();
  }

  re_activar_socket() async{
    /*if(Socket.getSocketStatus() == true){
      print('FLUTTER SOCKET SERVICE - HOME: IS DISCONNECT ${DateTime.now()}');
      int id = await Preference.getUser_ID();
      Socket.socketConexion();
      print('FLUTTER SOCKET SERVICE - HOME: CONNECT ${DateTime.now()}');
      Socket.joinUser({"USER_ID": id});
      print('FLUTTER SOCKET SERVICE - HOME: JOIN USER ${id} ... ${DateTime.now()}');
      Socket.listenSocket(id);
      print('FLUTTER SOCKET SERVICE- HOME: LISTEN ${DateTime.now()}');
    }*/
  }

  establecer_posicion_inicial() async {
    LocationProvider locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    locationProvider.latitude = await Preference.getLatitude();
    locationProvider.longitude = await Preference.getLongitude();
    print(
        "home_page: ${await Preference.getLatitude()} - ${await Preference.getLongitude()}");
    initCurrentPosition();
  }

  initCurrentPosition() async {
    LocationProvider locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    Position currentPosition = await Geolocator.getCurrentPosition();
    locationProvider.latitude = currentPosition.latitude;
    locationProvider.longitude = currentPosition.longitude;
    //Coordinates coordinates = Coordinates(locationProvider.latitude, locationProvider.longitude);
    //List<Address> address = await Geocoder.local.findAddressesFromCoordinates(coordinates);

    List<Placemark> places = await placemarkFromCoordinates(
        locationProvider.latitude, locationProvider.longitude);
    locationProvider.direccion = places.first.street!;
    print(places.first.street);

    await Preference.saveLatitude(currentPosition.latitude);
    await Preference.saveLongitude(currentPosition.longitude);
    print(
        "home_page: ${await Preference.getLatitude()} - ${await Preference.getLongitude()}");
    print('WWWWWWWWWWWWWWWWWWWWW');

    Map<String, dynamic> values = {'latitude':currentPosition.latitude, 'longitude':currentPosition.longitude, };
    var isRunning = await Socket_Service.service.isRunning();
    if (isRunning) {
      Socket_Service.service.invoke("update_currentPosition",values);
    } else {
      Socket_Service.service.startService();
      Socket_Service.service.invoke("update_currentPosition",values);
    }
  }

  void VerificarFamiliaresRegistrados() async {
    print("preferences isLogin: ${await Preference.isFamiliarRegistrado()}");
    if (!(await Preference.isFamiliarRegistrado())) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegistroFamiliaresPage()));
    }
  }

  void VerificarValidacionCorreo() async {
    print("preferences getValicacionCorreo: ${await Preference.getValicacionCorreo()}");
    if ((await Preference.getValicacionCorreo() == 0)) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ValidacionCorreoPage()));
    }
  }

  void VerificarNotifacion() async {
    print("preferences isNotification: ${await Preference.isNotification()}");
    if ((await Preference.isNotification())) {
      await Preference.saveNotification(false);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NotificacionPage()));
    }
  }



  List<Widget> _pages = [
    Center(
      child: AlertasPage(),
    ),
    Center(
      child: ServiciosPage(),
    ),
    Center(
      child: NotificacionPage(),
    ),
    Center(
      child: SettingUserPage(),
      //child: SettingNewPage(),
      //child: DatosUsuarioPage(),
    ),
    // Center(child: Text("Mi Perfil",),),
  ];

  void alertNumerico(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormDirectorioWidgets();
        });
  }



  // API

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[indexPage],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xffFFFFFF),
        color: Color(0xff006DA2),
        activeColor: Color(0xff006DA2),
        elevation: 1,
        items: [
          TabItem(icon: Icons.add_location_alt_rounded, title: 'Reportes'),
          TabItem(icon: Icons.account_balance_wallet, title: 'Servicios'),
          TabItem(icon: Icons.add_alert_sharp, title: 'Notificaciones'),
          TabItem(icon: Icons.settings, title: 'Ajustes'),
          //TabItem(icon: Icons.mail_outline_rounded, title: 'Correo'),
        ],
        initialActiveIndex: indexPage,
        onTap: (int index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
     floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              alertNumerico(context);
            },
            child: Image.asset(
              "assets/images/celfono.png",
              height: 60,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffFFFFFF),
    );
  }
}

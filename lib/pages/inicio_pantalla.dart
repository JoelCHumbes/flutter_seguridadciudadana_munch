import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/pages/login_page.dart';
import 'package:seguridad_ciudadana/pages/permission_notificacion.page.dart';
import 'package:seguridad_ciudadana/pages/permission_page.dart';
import 'package:seguridad_ciudadana/pages/registro_usuario.dart';
import 'package:seguridad_ciudadana/utils/assets_svg.dart';
import 'package:seguridad_ciudadana/utils/preference.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

class InicioPantalla extends StatefulWidget {
  const InicioPantalla({Key? key}) : super(key: key);

  @override
  State<InicioPantalla> createState() => _InicioPantallaState();
}

class _InicioPantallaState extends State<InicioPantalla>
    with TickerProviderStateMixin {

  void VerificarLogin() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.notification,
      //add more permission to request here.
    ].request();

    print("statuses[Permission.location] ${statuses[Permission.location]}");
    print("statuses[Permission.notification] ${statuses[Permission.notification]}");

    print("inicio_pantalla preferences isLogin: ${await Preference.isLogin()}");
    if (await Preference.isLogin()) {
      PermissionStatus status = await Permission.location.request();
      print("statuses[Permission.location] ${await Permission.location.request().isGranted}");
      if (await Permission.location.request().isGranted) {
        PermissionStatus status1 = await Permission.notification.request();
        print("statuses[Permission.notification] ${await Permission.notification.request()}");
        if (await Permission.notification.request().isGranted) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false);
        }else{
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PermissionNotificacion()));
        }
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PermissionPage()));
      }
    } else {
      PermissionStatus status = await Permission.location.request();
      print("statuses[Permission.location] ${await Permission.location.request().isGranted}");
      if (await Permission.location.request().isGranted) {
        PermissionStatus status1 = await Permission.notification.request();
        print("statuses[Permission.notification] ${await Permission.notification.request().isGranted}");
        if (await Permission.notification.request().isGranted) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false);
        }else{
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PermissionNotificacion()));
        }
      }else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PermissionPage()));
      }
    }
  }

  void initState() {
    super.initState();
    VerificarLogin();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    offset = Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
        .animate(controller);

    _image = AssetImage("assets/images/alertata.png");
    Timer.run(
          () => precacheImage(_image, context).then((_) => controller.forward()),
    );


    controllertwo =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    offsettwo = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
        .animate(controllertwo);

    _imagetwo = AssetImage("assets/images/chorrr.png");
    Timer.run(
          () => precacheImage(_imagetwo, context).then((_) => controllertwo.forward()),
    );
  }

  void alertNumerico(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormDirectorioWidgets();
        });
  }

  //////////////////////////////////////////

  late AnimationController controller;
  late Animation<Offset> offset;
  late AssetImage _image;

  late AnimationController controllertwo;
  late Animation<Offset> offsettwo;
  late AssetImage _imagetwo;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 1.00,
            decoration: const BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/fondotwo.png",
                ),
              ),
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      /* Image.asset("assets/images/titulo.png"), */
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                                //Colors.transparent
                              ],
                            ).createShader(Rect.fromLTRB(
                                0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: SlideTransition(
                            position: offset,
                            child: Image(
                              image: _image,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                                // Colors.transparent
                              ],
                            ).createShader(Rect.fromLTRB(
                                0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: SlideTransition(
                            position: offsettwo,
                            child: Image(
                              image: _imagetwo,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          },
                          child: Image.asset(
                            "assets/images/iniciarsesion.png",
                            width: 200,
                            height: 70,
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegistroUsuario(),
                                ));
                          },
                          child: Image.asset(
                            "assets/images/crearcuenta.png",
                            width: 200,
                            height: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/pages/login_page.dart';
import 'package:seguridad_ciudadana/pages/registro_usuario.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';
import 'package:video_player/video_player.dart';

class InicioPantalla extends StatefulWidget {
  const InicioPantalla({Key? key}) : super(key: key);

  @override
  State<InicioPantalla> createState() => _InicioPantallaState();
}

class _InicioPantallaState extends State<InicioPantalla> {


  void alertNumerico(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormDirectorioWidgets();
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              alertNumerico(context);
            },
            child: Container(
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    // color: const Color(0xff6A6A6C),
                      color: const Color(0xff4CB051),
                      blurRadius: 10.0,
                      offset: const Offset(0, 3.0)),
                ],
              ),
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.47,
            decoration: const BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(42.0),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/cho.png",
                ),
              ),
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/seconder.png",
                          height: 50,
                        ),
                        spacingHeigth20,
                        const Text(
                          "Bienvenido a",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            letterSpacing: 1,
                          ),
                        ),
                        const Text(
                          "CHORRILLOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.68),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          bottomRight: Radius.circular(42.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "Playa Agua Dulce",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Chorrillo, Lima, Peru",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.beach_access_sharp,
                                color: Colors.white,
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Lottie.asset(
                  "assets/lottie/login.json",
                  height: 200,
                  width: double.infinity,
                ),
                Column(
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                      },

                      child: Container(
                        height: 50.0,
                        width: 240.0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 14.0,
                        ),
                        margin: const EdgeInsets.only(right: 12.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff006EA3),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                              // color: const Color(0xff6A6A6C),
                                color: Color(0xffB3B3B3),
                                blurRadius: 10.0,
                                offset: Offset(0, 3.0)),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Iniciar Sesion",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    spacingHeigth14,
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroUsuario(),));
                      },
                      child: Container(
                        height: 50.0,
                        width: 240.0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 14.0,
                        ),
                        margin: const EdgeInsets.only(right: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xff006E63),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                              // color: const Color(0xff6A6A6C),
                                color: Color(0xffB3B3B3),
                                blurRadius: 10.0,
                                offset: Offset(0, 3.0)),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.chrome_reader_mode_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Crea tu Cuenta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

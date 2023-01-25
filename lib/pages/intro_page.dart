import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/pages/inicio_pantalla.dart';
import 'package:seguridad_ciudadana/pages/registro_usuario.dart';
import 'package:seguridad_ciudadana/pages/validador_page.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void initState() {
    Future.delayed(
        Duration(milliseconds: 5000),
        () => Navigator.push(
            //context, MaterialPageRoute(builder: (context) => ValidadorPage())));
            context,
            MaterialPageRoute(builder: (context) => InicioPantalla())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
                  "assets/images/xx.jpg",
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
                         Text(
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
                        SizedBox(
                          width: 170,
                          height: 140,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/chrii.png",
                            height: 250,
                            width: double.infinity,
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Lottie.asset(
                            "assets/lottie/loadinglo.json",
                            height: 100,
                          ),
                        ),
                      ],
                    ),
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

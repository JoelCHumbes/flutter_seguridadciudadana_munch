import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/pages/inicio_pantalla.dart';
import 'package:seguridad_ciudadana/pages/registro_usuario.dart';
import 'package:seguridad_ciudadana/pages/validador_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  void initState() {
    Future.delayed(
        Duration(milliseconds: 4000),
            () => Navigator.push(
            //context, MaterialPageRoute(builder: (context) => ValidadorPage())));
                context, MaterialPageRoute(builder: (context) => InicioPantalla())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .7,
                child: Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                ),
              ),
            ),

               Lottie.asset(
                "assets/lottie/olas.json",
              ),

          ],
        ),
      ),
    );
  }
}

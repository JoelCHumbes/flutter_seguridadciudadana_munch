import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/pages/persona_juridica_page.dart';
import 'package:seguridad_ciudadana/pages/persona_natural_page.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({Key? key}) : super(key: key);

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_circle_left,
                      size: 30,
                      color: Color(0xff006DA3),
                    ),
                  ),
                ],
              ),
            ),
            spacingHeigth70,
            Column(
              children: [
                Image.asset(
                  "assets/images/cc.png",
                  height: 150,
                ),
              ],
            ),
            spacingHeigth70,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonaNatural()));
                      },
                      child: Image.asset(
                        "assets/images/ntt.png",
                        height: 120,
                      ),
                    ),
                    const Text(
                      "PERSONA \n NATURAL",
                      style: TextStyle(
                        color: Color(0xff4D9991),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                spacingWidth14,
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonaJuridica()),);
                      },
                      child: Image.asset(
                        "assets/images/juri.png",
                        height: 125,
                      ),
                    ),
                    const Text(
                      "PERSONA \n JURIDICA",
                      style: TextStyle(
                        color: Color(0xff4D9991),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

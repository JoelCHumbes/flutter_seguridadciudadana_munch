import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormPolitica extends StatefulWidget {
  const FormPolitica({Key? key}) : super(key: key);

  @override
  State<FormPolitica> createState() => _FormPoliticaState();
}

class _FormPoliticaState extends State<FormPolitica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [

                    InkWell(
                      child: Icon(
                        Icons.arrow_circle_left,
                        size: 30,
                        color: Color(0xff006DA3),
                      ),
                    ),


                ],
              ),
            ),
            Column(
              children: const [
                Text(
                  textAlign: TextAlign.center,
                  "POLITICAS DE PRIVACIDAD \n ALERTA CHORRILLOS",
                  style: TextStyle(
                    color: Color(0xff006DA3),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

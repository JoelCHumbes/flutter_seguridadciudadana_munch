import 'package:flutter/material.dart';


class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({Key? key}) : super(key: key);

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
               child: Container(),

            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/widgets/form_correo.dart';
import 'package:seguridad_ciudadana/widgets/form_datos_familiares.dart';
import 'package:seguridad_ciudadana/widgets/form_datos_ruc.dart';
import 'package:seguridad_ciudadana/widgets/form_ruc_documento.dart';

class PersonaJuridica extends StatefulWidget {
  const PersonaJuridica({Key? key}) : super(key: key);

  @override
  State<PersonaJuridica> createState() => _PersonaJuridicaState();
}

class _PersonaJuridicaState extends State<PersonaJuridica> {

  int indexPage = 0;

  List<Widget> _pages=[
    Center(child: FormRucDocumento()),
    Center(child: FormDatosRuc()),
    Center(child: FormDatosFamiliares()),
    Center(child: FormCorreo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: _pages[indexPage],
      bottomNavigationBar:
      ConvexAppBar(
        backgroundColor: Color(0xff184F78),
        items: const [
          TabItem(icon: Icons.credit_card_outlined, title: 'Documentos'),
          TabItem(icon: Icons.account_box, title: 'Personales'),
          TabItem(icon: Icons.account_circle, title: 'Familiares'),
          TabItem(icon: Icons.mail_outline_rounded, title: 'Correo'),
        ],
        initialActiveIndex: indexPage,
        onTap: (int index){
          setState(() {
            indexPage = index;
          });
        },
      ),

    );
  }
}

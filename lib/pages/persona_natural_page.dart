import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/pages/alertas_page.dart';
import 'package:seguridad_ciudadana/pages/servicios_page.dart';
import 'package:seguridad_ciudadana/widgets/form_correo.dart';
import 'package:seguridad_ciudadana/widgets/form_datos_familiares.dart';
import 'package:seguridad_ciudadana/widgets/form_datos_personales.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/form_documentos_validacion.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class PersonaNatural extends StatefulWidget {
  const PersonaNatural({Key? key}) : super(key: key);

  @override
  State<PersonaNatural> createState() => _PersonaNaturalState();
}

class _PersonaNaturalState extends State<PersonaNatural> {

  int indexPage = 0;

  List<Widget> _pages=[
    Center(child: FormDocumentos(),),
    Center(child: FormDatosPersonales()),
    Center(child: FormDatosFamiliares()),
    Center(child: FormCorreo()),
  ];





  void alertNumerico(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormDirectorioWidgets();
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: _pages[indexPage],
      bottomNavigationBar:
      ConvexAppBar(
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

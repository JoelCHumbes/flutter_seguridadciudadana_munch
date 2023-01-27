import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/alertas_page.dart';
import 'package:seguridad_ciudadana/pages/notificaciones_page.dart';
import 'package:seguridad_ciudadana/pages/servicios_page.dart';
import 'package:seguridad_ciudadana/utils/assets_svg.dart';
import 'package:seguridad_ciudadana/utils/general/colors.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexPage = 0;

  List<Widget> _pages=[
    Center(child: AlertasPage(),),
    Center(child: ServiciosPage()),
    Center(child: NotificacionPage()),
    Center(child: Text("Mi Perfil",),),
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
      body: _pages[indexPage],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
        decoration: BoxDecoration(
          color: kBrandSecondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28.0),
            topRight: Radius.circular(28.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(
            color: Colors.white70,
            fontSize: 12.0,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 12.0,
            color: kBrandPrimaryColor,
          ),
          selectedItemColor: kBrandPrimaryColor,
          unselectedItemColor: Colors.white70,
          onTap: (int value){
              indexPage = value;
              setState(() {

              });
          },

          currentIndex: indexPage,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetSvg.iconAlerta,
                color: Colors.white,
              ),
              label: "Alertas",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetSvg.iconServic,
                color: Colors.white,
              ),
              label: "Servicios",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetSvg.iconNotifi,
                color: Colors.white,
              ),
              label: "Notificaciones",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetSvg.iconUser,
                color: Colors.white,
              ),
              label: "Mi perfil",
            ),
          ],
        ),
      ),
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
      backgroundColor: Color(0xffFFFFFF),

    );
  }
}

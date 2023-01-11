import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/utils/general/colors.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 4.0),
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
          ),
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_rounded),
              label: "Emergencia"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.adb_sharp),
              label: "Alerta"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
                label: "Notificacion"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
                label: "Otros"
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Lottie.asset(
                "assets/lottie/security.json",
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE8EAED),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      spacingHeigth12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff59A869),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff4CB051),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/robb.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ROBO O ASALTO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth18,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff3A3434),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff3A3434),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/sospechoso.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ALERTA \n SOSPECHOSO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffFEE5E9),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffB6B6B6),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/cruz.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "AMBULANCIA \n 106",
                                      style: TextStyle(
                                        color: Color(0xff4D4D4D),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth18,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffEFB810),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffF2C32D),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/bombero.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "BOMBEROS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffBEBEBE),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/urgencia.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "EMERGENCIAS",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth18,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff3949AB),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff3949AB),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/ola1.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "EMERGENCIA PLAYAS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffFF96C5),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffFF1B82),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/acoso.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "NO AL ACOSO \n SEXUAL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth18,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff872400),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff872400),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/violencia.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "NO A LA VIOLENCIA FAMILIAR",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

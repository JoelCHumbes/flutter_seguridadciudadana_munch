import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/form_reporte_widget.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class AlertasPage extends StatelessWidget {
  const AlertasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
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
                       spacingHeigth4,
                      Text(
                        textAlign: TextAlign.center,
                        "SELECCIONA EL TIPO DE INCIDENTE \n QUE QUIERES REPORTAR",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => FormReporteWidget(),));

                            },
                            child: Container(
                              height: 120,
                              width: 110,
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
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth14,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ROBO O ASALTO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              height: 120,
                              width: 110,
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
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ALERTA \n SOSPECHOSO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffC22E5A),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffC22E5A),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/ambulancia.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "AMBULANCIA \n 106",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
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
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffA78E05),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffA78E05),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/bmb.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "BOMBEROS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffC8795F),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffC8795F),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/autorobado.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ROBO DE \n VEHICULO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff6C8392),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff6C8392),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/robocasa.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ROBO A \n CASA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
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
                              height: 120,
                              width: 110,
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
                                      "assets/images/playa.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "EMERGENCIA PLAYAS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffCE8625),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffCE8625),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/choque.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ACCIDENTE TRANSITO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffE15616),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffE15616),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/drogas.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "DROGAS ALCOHOL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
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
                              height: 120,
                              width: 110,
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
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "EMERGENCIAS",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffFF96C5),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffFF1B82),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 2.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/acoso.png",
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "NO AL ACOSO \n SEXUAL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffF75150),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffF75150),
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
                                      height: 70,
                                      width: 80,
                                    ),
                                    spacingHeigth8,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "NO A VIOLENCIA FAMILIAR",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
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

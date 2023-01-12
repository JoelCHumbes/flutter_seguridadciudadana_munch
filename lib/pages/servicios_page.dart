import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Lottie.asset(
                "assets/lottie/comunidad.json",
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
                        "Selecciona el tipo de Incoveniente \n en la Localidad",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff676767),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff676767),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/semafo.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    spacingHeigth10,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "SEMAFORO DEFECTUOSO",
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
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff2E6AEC),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff2E6AEC),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/automal.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    spacingHeigth10,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "MAL \n ESTACIONADO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          spacingWidth4,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffF0C325),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffF1C22),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/senales.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "SEÑALIZACION EN \n MAL ESTADO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
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
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff235381),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff235381),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/poste.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    spacingHeigth14,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ALUMBRADO \n PUBLICO",
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
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffC6087F),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffC6087F),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/comerc.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "COMERCIO \n AMBULANTE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff3A3434),
                                borderRadius: BorderRadius.circular(60),
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
                                      "assets/images/basura.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "BASURA",
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
                        ],
                      ),
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff59A869),
                                borderRadius: BorderRadius.circular(60),
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
                                      "assets/images/podador.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth4,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "PODA DE ARBOLES",
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffD48943),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffD48943),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/perritoo.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "MASCOTA \n PERDIDA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff6C8391),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xff6C8391),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/alcantaria.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "ALCANTARILLA \n SIN TAPA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
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
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffF25E16),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffF25E16),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/paradero.png",
                                      height: 60,
                                      width: 60,
                                    ),

                                    Text(
                                      textAlign: TextAlign.center,
                                      "PARADERO EN \n MAL ESTADO",
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
                          spacingWidth8,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffE67EF1),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffE67EF1),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/graf.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "GRAFFITI",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xffD8463B),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    // color: const Color(0xff6A6A6C),
                                      color: const Color(0xffD8463B),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 3.0)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/exclam.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    spacingHeigth6,
                                    Text(
                                      textAlign: TextAlign.center,
                                      "OTROS",
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

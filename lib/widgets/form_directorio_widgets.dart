
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FormDirectorioWidgets extends StatefulWidget {
  const FormDirectorioWidgets({Key? key}) : super(key: key);

  @override
  State<FormDirectorioWidgets> createState() => _FormDirectorioWidgetsState();
}

class _FormDirectorioWidgetsState extends State<FormDirectorioWidgets> {
  final TextEditingController _numberBomberos = TextEditingController();
  final TextEditingController _numberSamu = TextEditingController();
  final TextEditingController _numberSerenazgo = TextEditingController();
  final TextEditingController _numberComisaria = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberBomberos.text = "116";
    _numberSamu.text = "106";
    _numberSerenazgo.text = "016803000";
    _numberComisaria.text = "014670184";
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      content: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/icono2.png",
                    height: 90,
                    width: 150,
                  ),
                  Lottie.asset(
                    "assets/lottie/sirena.json",
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    spacingWidth4,
                    Text(
                      textAlign: TextAlign.center,
                      "NUMEROS DE EMERGENCIAS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          spacingHeigth18,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberBomberos.text);
                },
                child: Container(
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xffFFC159),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xffFF9557),
                          blurRadius: 10.0,
                          offset: const Offset(0, 3.0)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/bombero.png",
                          height: 70,
                          width: 80,
                        ),
                        spacingHeigth8,
                        Text(
                          textAlign: TextAlign.center,
                          "116 \n BOMBEROS",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              spacingWidth10,

              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberSamu.text);
                },
                child: Container(
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff0CB7F2),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xff0CB7F2),
                          blurRadius: 10.0,
                          offset: const Offset(0, 3.0)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/cruzroja.png",
                          height: 70,
                          width: 80,
                        ),
                        spacingHeigth8,
                        Text(
                          textAlign: TextAlign.center,
                          "106 \n SAMU",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffFFFFFF),
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
          spacingHeigth25,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberSerenazgo.text);
                },
                child: Container(
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff4E5DC0),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xff004882),
                          blurRadius: 10.0,
                          offset: const Offset(0, 3.0)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/serenazgo.png",
                          height: 70,
                          width: 80,
                        ),
                        spacingHeigth8,
                        Text(
                          textAlign: TextAlign.center,
                          "6803000 \n SERENAZGO",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              spacingWidth10,
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberComisaria.text);
                },
                child: Container(
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff01A884),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xff01A884),
                          blurRadius: 10.0,
                          offset: const Offset(0, 3.0)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/comisaria.png",
                          height: 70,
                          width: 80,
                        ),
                        spacingHeigth8,
                        Text(
                          textAlign: TextAlign.center,
                          "4670184 \n COMISARIA",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffFFFFFF),
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

          spacingHeigth40,

          InkWell(
            onTap: () async {
              Uri linkWhatsApp = Uri.parse(
                  "https://wa.me/51924803433?text=Necesito%20-Ayuda%20Urgente%20PorFavor");
              await launchUrl(
                linkWhatsApp,
                mode: LaunchMode.externalApplication,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    // 1BD741 color: const Color(0xff6A6A6C),
                      color: const Color(0xff1BD741),
                      blurRadius: 10.0,
                      offset: const Offset(0, 3.0)),
                ],
              ),
              child: Row(
                children: [
                  Image.asset(
                    height: 60,
                    width: 60,
                    "assets/images/whatsapp.png",
                  ),
                  spacingWidth12,
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Icon(
                             Icons.mail,
                             color: Colors.black,
                           ),
                           spacingWidth4,
                           Text(
                             textAlign: TextAlign.center,
                             "WhatsApp Mensajes",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 10.0,
                               letterSpacing: 1,
                             ),
                           ),
                         ],
                       ),

                       Text(
                         "924-803-433",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 12,
                         ),
                       ),
                     ],
                   ),
                 ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}


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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberBomberos.text);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xffFF9557),
                          blurRadius: 15.0,
                          offset: const Offset(0, 7.0)),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/bombero.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberSamu.text);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xff0CB7F2),
                          blurRadius: 15.0,
                          offset: const Offset(0, 7.0)),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/cruz.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          spacingHeigth14,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                textAlign: TextAlign.center,
                "116 \n Bomberos",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff6C6C6C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "106 \n Samu",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff6C6C6C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          spacingHeigth10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberSerenazgo.text);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xff004882),
                          blurRadius: 15.0,
                          offset: const Offset(0, 7.0)),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/serenazgo.png",
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  FlutterPhoneDirectCaller.callNumber(_numberComisaria.text);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff6A6A6C),
                          color: const Color(0xffFFC159),
                          blurRadius: 15.0,
                          offset: const Offset(0, 7.0)),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/comisaria.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          spacingHeigth14,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                textAlign: TextAlign.center,
                "6803000 \n Serenazgo",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff6C6C6C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "4670184 \n Comisaria",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff6C6C6C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          spacingHeigth8,
          Container(
            color: Color(0xff00A884),
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    spacingWidth4,
                    Text(
                      textAlign: TextAlign.center,
                      "WHATSAPP",
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
          Container(
            color: Color(0xff00A884),
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    spacingWidth4,
                    Text(
                      textAlign: TextAlign.center,
                      "WHATSAPP MESSAGE",
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
          spacingHeigth8,

          InkWell(
            onTap: (){
              openWhatsapp();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    // color: const Color(0xff6A6A6C),
                      color: const Color(0xff1BD741),
                      blurRadius: 15.0,
                      offset: const Offset(0, 7.0)),
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
                  Text(
                    "924-803-433",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
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



  openWhatsapp()async{
    var whatsapp = "+51924803433";
    var whatsappURL_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
    var whatsappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("Hello")}";

    if(Platform.isIOS){

      if(await canLaunchUrlString(whatsappURL_ios)){
        await launchUrlString(whatsappURL_ios);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: new Text("Whatsapp no installed")));
      }

    }else{

      if(await canLaunchUrlString(whatsappURL_android)){
        await launchUrlString(whatsappURL_android);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: new Text("Whatsapp no installed")));
      }

    }
  }


}

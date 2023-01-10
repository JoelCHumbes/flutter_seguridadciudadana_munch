import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  void alertNumerico(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
         return FormDirectorioWidgets();
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

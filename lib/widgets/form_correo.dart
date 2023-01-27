import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/widgets/form_politica.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormCorreo extends StatefulWidget {
  const FormCorreo({Key? key}) : super(key: key);

  @override
  State<FormCorreo> createState() => _FormCorreoState();
}

class _FormCorreoState extends State<FormCorreo> {
  bool _isChecked = false;

  void alertPolitica(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormCorreo();
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_circle_left,
                    size: 30,
                    color: Color(0xff006DA3),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/ntt.png",
              height: 100,
            ),
            spacingHeigth4,
            const Text(
              "PERSONA NATURAL",
              style: TextStyle(
                color: Color(0xff4D9991),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            spacingHeigth8,
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: Color(0xffECE8E7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Lottie.asset(
              "assets/lottie/mail.json",
              height: 200,
              width: double.infinity,
            ),
            spacingHeigth8,
            const Text(
              "ACCESO A PLATAFORMA",
              style: TextStyle(
                color: Color(0xff184F78),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            spacingHeigth4,
            const Text(
              textAlign: TextAlign.center,
              "Ingresa tu correo Gmail con el cual accedera a \n nuestra Plataforma y reciibira notificaciones.",
              style: TextStyle(
                color: Color(0xff184F78),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            spacingHeigth8,
            Container(
              width: 250,
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 14.0),
                  hintText: "Ingrese su Correo Electronico",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            spacingHeigth8,
            const Text(
              "AUTORIZACION DE USO \n DE  APLICATIVO MOVIL",
              style: TextStyle(
                color: Color(0xff184F78),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            spacingHeigth8,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (val){
                     setState(() {
                       _isChecked = val!;
                     });
                  },
                ),
                const Text(
                  "He leido y acepto",
                  style: TextStyle(color: Color(0xff184F78)),
                ),
                spacingWidth4,
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FormPolitica()));
                  },
                  child: const Text(
                    "terminos y condiciones",
                    style: TextStyle(
                      color: Color(0xff509791),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

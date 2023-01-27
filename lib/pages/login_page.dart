import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/pages/registro_usuario.dart';
import 'package:seguridad_ciudadana/widgets/form_directorio_widgets.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isInvisible = true;

  void alertNumerico(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormDirectorioWidgets();
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.47,
              decoration: const BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(42.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/ff.jpg",
                  ),
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/iconscho.png",
                            height: 70,
                          ),
                          spacingHeigth20,
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.white.withOpacity(0.68),
                          color: Colors.white.withOpacity(0.68),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(42.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    "El Salto del Fraile",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Chorrillo, Lima, Peru",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.beach_access_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spacingHeigth10,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  spacingHeigth14,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person,
                        color: Color(0xff184F78),
                      ),
                      spacingWidth4,
                      const Text(
                        "INICIA SESION",
                        style: TextStyle(
                          color: Color(0xff184F78),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  spacingHeigth20,
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Numero Dni",
                            style: TextStyle(
                              color: Color(0xff184F78),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth4,
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff878787).withOpacity(0.5),
                          ),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            hintText: "Ingrese Numero Dni",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                            prefixIcon: const Icon(
                              Icons.credit_card,
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
                      spacingHeigth14,
                      Row(
                        children: const [
                          Text(
                            "Contraseña",
                            style: TextStyle(
                              color: Color(0xff184F78),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth4,
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff878787).withOpacity(0.5),
                          ),
                        ),
                        child: TextFormField(
                          obscureText: isInvisible,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            hintText: "Ingrese Contraseña",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                            suffixIcon: IconButton(
                              //Operador ternario
                              icon: isInvisible == true
                                  ? Icon(Icons.remove_red_eye)
                                  : Icon(Icons.remove_red_eye_outlined),
                              onPressed: () {
                                isInvisible = !isInvisible;
                                setState(() {});
                              },
                            ),
                            prefixIcon: const Icon(Icons.lock),
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
                      spacingHeigth18,
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff53968F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "Ingresar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                spacingWidth6,
                                const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      spacingHeigth8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Eres Nuevo?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          spacingWidth6,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistroUsuario()));
                            },
                            child: const Text(
                              "Crea tu Cuenta",
                              style: TextStyle(
                                color: Color(0xff184F78),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

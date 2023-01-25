import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormDatosFamiliares extends StatelessWidget {
  const FormDatosFamiliares({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
              spacingHeigth4,
              Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                  color: Color(0xffECE8E7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              spacingHeigth4,
              const Text(
                "DATOS FAMILIARES",
                style: TextStyle(
                  color: Color(0xff184F78),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children:[
                        Icon(
                          Icons.account_box,
                          color: Color(0xff184F78),
                        ),
                        spacingWidth6,
                        Text(
                          "Datos Primer Familiar",
                          style: TextStyle(
                            color: Color(0xff184F78),
                          ),
                        ),
                      ],
                    ),
                    spacingHeigth6,
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Apellido Paterno",
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
                                width: 170,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 14.0),
                                    hintText: "Ingrese Apellido Paterno",
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
                            ],
                          ),
                        ),
                        spacingWidth4,
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Apellido Materno",
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
                                width: 170,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 14.0),
                                    hintText: "Ingrese Apellido Materno",
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    spacingHeigth6,
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nombres",
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
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 14.0),
                              hintText: "Ingrese Nombres",
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
                      ],
                    ),
                    spacingHeigth14,
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Telefono",
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
                                width: 170,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  maxLength: 7,
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 14.0),
                                    hintText: "Ingrese Telefono",
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
                            ],
                          ),
                        ),
                        spacingWidth4,
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Celular",
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
                                width: 170,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  maxLength: 9,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 14.0),
                                    hintText: "Ingrese Celular",
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    spacingHeigth6,
                    Column(
                      children: [

                        Row(
                          children: const [
                            Text(
                              "Correo Electronico (Gmail)",
                              style: TextStyle(
                                color: Color(0xff184F78),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        spacingHeigth2,
                        Container(
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
                              hintText: "Ingrese Correo Electronico",
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
                        spacingHeigth14,
                        Row(
                          children:[
                            Icon(
                              Icons.account_box,
                              color: Color(0xff184F78),
                            ),
                            spacingWidth6,
                            Text(
                              "Datos Segundo Familiar",
                              style: TextStyle(
                                color: Color(0xff184F78),
                              ),
                            ),
                          ],
                        ),
                        spacingHeigth6,
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Apellido Paterno",
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
                                    width: 170,
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 14.0),
                                        hintText: "Ingrese Apellido Paterno",
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
                                ],
                              ),
                            ),
                            spacingWidth4,
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Apellido Materno",
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
                                    width: 170,
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 14.0),
                                        hintText: "Ingrese Apellido Materno",
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        spacingHeigth4,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff53968F),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.cancel,
                                      color: Colors.white,
                                    ),
                                    spacingWidth10,
                                    const Text(
                                      textAlign: TextAlign.center,
                                      "Cancelar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    spacingWidth6,
                                  ],
                                ),
                              ),
                            ),
                            spacingHeigth4,
                            Container(
                              width: 140,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff184F78),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Continuar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    spacingWidth10,
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
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
      ),
    );
  }
}

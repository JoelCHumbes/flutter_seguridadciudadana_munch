import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormRucDocumento extends StatefulWidget {
  const FormRucDocumento({Key? key}) : super(key: key);

  @override
  State<FormRucDocumento> createState() => _FormRucDocumentoState();
}

class _FormRucDocumentoState extends State<FormRucDocumento> {

  int documentValue = 0;
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    documentValue = 1;
    dateInput.text = "";
    super.initState();
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
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_circle_left,
                      size: 30,
                      color: Color(0xff006DA3),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/juri.png",
              height: 100,
            ),
            spacingHeigth4,
            const Text(
              "PERSONA JURIDICA",
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
            spacingHeigth6,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Tipo Documento",
                        style: TextStyle(
                          color: Color(0xff184F78),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  spacingHeigth6,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xffBCBCBC),
                        width: 1.2,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(14.0),
                        elevation: 6,
                        value: documentValue,
                        isExpanded: true,
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "RUC",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (int? value) {
                          documentValue = value!;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  spacingHeigth14,
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Numero de Ruc",
                            style: TextStyle(
                              color: Color(0xff184F78),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      spacingHeigth8,
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          controller: dateInput,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            hintText: "Ingrese numero Ruc",
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
                      spacingHeigth35,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
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
                                    Icon(
                                      Icons.cancel,
                                      color: Colors.white,
                                    ),
                                    spacingWidth10,
                                    Text(
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
    );
  }
}

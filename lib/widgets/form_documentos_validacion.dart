import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seguridad_ciudadana/services/api_service.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormDocumentos extends StatefulWidget {
  const FormDocumentos({Key? key}) : super(key: key);

  @override
  State<FormDocumentos> createState() => _FormDocumentosState();
}

class _FormDocumentosState extends State<FormDocumentos> {
  int documentValue = 0;
  TextEditingController dateInput = TextEditingController();

  ApiService apiService = ApiService();

  @override
  void initState() {
    documentValue = 1;
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(apiService.RegistroUser());

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
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
                                "DNI",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text(
                                "CARNET EXTRANJERIA",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text(
                                "PASAPORTE",
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
                    spacingHeigth8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Numero Documento",
                          style: TextStyle(
                            color: Color(0xff184F78),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Codigo Verificador",
                          style: TextStyle(
                            color: Color(0xff184F78),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    spacingHeigth6,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 8,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 14.0),
                              hintText: "Ingrese N°Documento",
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
                        Container(
                          width: 120,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 14.0),
                              hintText: "Ingrese Codigo",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: BorderSide.none,
                              ),
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
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Fecha Emision (dd/mm/aa):",
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
                              hintText: "--/--/--",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                              suffixIcon: InkWell(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2100));

                                  if (pickedDate != null) {
                                    print(
                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('dd-MM-yyyy')
                                            .format(pickedDate);
                                    print(
                                        formattedDate); //formatted date output using intl package =>  2021-03-16
                                    setState(() {
                                      dateInput.text =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {}
                                },
                                child: const Icon(
                                  Icons.date_range_rounded,
                                  color: Color(0xff184F78),
                                ),
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
      ),
    );
  }
}

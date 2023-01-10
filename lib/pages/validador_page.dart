import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seguridad_ciudadana/pages/home_page.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class ValidadorPage extends StatelessWidget {
  const ValidadorPage({Key? key}) : super(key: key);

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
                height: 200,
                "assets/lottie/securityone.json",
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(
                      0xff155598,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    spacingHeigth14,
                    Text(
                      "VERIFICACION IDENTIDAD",
                      style: TextStyle(
                        color: Color(
                          0xff155598,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    spacingHeigth8,
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NUMERO DOCUMENTO",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        //controller: _searchRucController,
                        keyboardType: TextInputType.number,
                        maxLength: 11,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 14.0),
                          hintText: "Ingrese Numero Documento",
                          suffixIcon: Container(
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // String ruc = _searchRucController.text;
                                // getDataRuc(ruc);
                                //_searchController.clear();
                              },
                            ),
                          ),
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
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
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "* Obligatorio Numero Ruc";
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Primer Apellido",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        // controller: _razonSocialController,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 14.0),
                          hintText: "Ingrese Primer Apellido",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
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
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "";
                          }

                          return null;
                        },
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Segundo Apellido",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          // controller: _razonSocialController,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            hintText: "Ingrese Segundo Apellido",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
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
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "";
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                    spacingHeigth14,
                      
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                         },
                         child: Container(
                           // height: 50.0,
                            width: 220.0,
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.0,
                              vertical: 14.0,
                            ),
                            margin: EdgeInsets.only(right: 12.0),
                            decoration: BoxDecoration(
                              color: Color(0xff155598),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Text(
                                  "VALIDACIÒN ACCESO",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                       ),
                      
                    
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

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class FormReporteWidget extends StatefulWidget {
  const FormReporteWidget({Key? key}) : super(key: key);

  @override
  State<FormReporteWidget> createState() => _FormReporteWidgetState();
}

class _FormReporteWidgetState extends State<FormReporteWidget> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _imageFile;

  getImageCamera() async {
    _imageFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (_imageFile != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              // alertNumerico(context);
            },
            child: Container(
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      // color: const Color(0xff6A6A6C),
                      color: const Color(0xffF2F2F2),
                      blurRadius: 10.0,
                      offset: const Offset(0, 2.0)),
                ],
              ),
              child: Icon(
                Icons.mic,
                color: Colors.black,
              ),
            ),
          ),
          spacingHeigth4,
          Text(
            "Audio",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          spacingHeigth8,
          InkWell(
            onTap: () {
              getImageCamera();
            },
            child: Container(
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      // color: const Color(0xff6A6A6C),
                      color: const Color(0xffF2F2F2),
                      blurRadius: 10.0,
                      offset: const Offset(0, 2.0)),
                ],
              ),
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
            ),
          ),
          spacingHeigth4,
          Text(
            "(+3)Foto",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          spacingHeigth8,
          InkWell(
            onTap: () {
              // alertNumerico(context);
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
                      offset: const Offset(0, 2.0)),
                ],
              ),
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          ),
          spacingHeigth4,
          Text(
            "Enviar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xff253252),
        title: Text(
          "REPORTA TU INCIDENTE",
          style: GoogleFonts.aclonica(fontSize: 16, letterSpacing: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-11.261080, -76.331244),
                      zoom: 8,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff253252),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      spacingHeigth8,
                      Container(
                        width: 48,
                        height: 4.5,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F4F5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      spacingHeigth4,
                      Text(
                        "Por favor ingresa todos los datos solicitados a \n continuación ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                          height: 1.6,
                          color: Color(0xffF2F4F5).withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      spacingHeigth8,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            _imageFile != null
                                ? ClipRRect(
                              borderRadius: BorderRadius.circular(14.0),
                              child: Image(
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                                image: FileImage(File(_imageFile!.path)),
                              ),
                            )
                                : Placeholder(
                              fallbackHeight: 150.0,
                              fallbackWidth: 150.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/camr.jpg",
                                ),
                              ),
                            ),
                            spacingWidth4,
                            InkWell(
                              onTap: () async {
                              //  remove_doc_principal();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.close_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            spacingWidth8,

                            _imageFile != null
                                ? ClipRRect(
                              borderRadius: BorderRadius.circular(14.0),
                              child: Image(
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                                image: FileImage(File(_imageFile!.path)),
                              ),
                            )
                                : Placeholder(
                              fallbackHeight: 150.0,
                              fallbackWidth: 150.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/camr.jpg",
                                ),
                              ),
                            ),
                            spacingWidth4,
                            InkWell(
                              onTap: () async {
                                //  remove_doc_principal();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.close_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),





                          ],
                        ),
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

import 'dart:io';

import 'package:flutter/material.dart';
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
                              child: Image.asset("assets/images/fott.png"),
                            ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  //controller: _chatController,
                                  decoration: InputDecoration(
                                      hintText: "Observaciones",
                                      hintStyle: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black38,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      /* prefixIcon: Icon(
                                        Icons.add_alert_sharp,
                                        size: 30.0,
                                        color: Colors.black45,
                                      ),*/
                                      suffixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.mic,
                                              size: 30,
                                              color: Colors.black45,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              getImageCamera();
                                            },
                                            icon: Icon(
                                              Icons.camera_alt,
                                              size: 30,
                                              color: Colors.black45,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6.0,
                                          ),
                                        ],
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                width: 7.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  /*   ChatMessageModel chat = ChatMessageModel(
                                    messageContent: _chatController.text,
                                    messageType: "me",
                                  );

                                  chatsMessageList.add(chat);

                                  _chatController.clear();

                                  setState(() {}); */
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xff3949AB),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

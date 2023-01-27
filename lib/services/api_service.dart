
import 'dart:convert';
import 'package:seguridad_ciudadana/utils/url_servicio.dart';
import 'package:http/http.dart' as http;

class ApiService{

  RegistroUser() async {
    Uri _url = Uri.parse("$pathProduction/auth/signUp");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
        // "Authorization": "Token ${_prefs.token}",
      },
      body: json.encode(
        {
          "document_type_id": 1,
          "document_number": "17491920",
          "names": "Roy Rosquete YA VA",
          "email": "rfzp93@gmail.com",
          "password": "MDCH@dm1n",
          "created_by": "Administrador developer"
        },
      ),
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 201) {
    /*  Map<String, dynamic> myMap = json.decode(response.body);
      //Map myMap = json.decode(response.body);
      Map<String, dynamic> consulRespon = myMap["consultarResponse"];
      Map<String, dynamic> retorno = consulRespon["return"];
      //Map<String, dynamic> datosdni = retorno["datosPersona"];
      ConsultaReniecModel consultaReniecModel = ConsultaReniecModel.fromJson(retorno["datosPersona"]);*/

/*
      Map datosdni = retorno["datosPersona"];

      apellidopaterno = datosdni["apPrimer"];
      print(apellidopaterno);
      apellidomaterno = datosdni["apSegundo"];
      print(apellidomaterno);
      nombres = datosdni["prenombres"];
      print(nombres);
      direccion = datosdni["direccion"];
      print(direccion);

      return true;*/


    //  return consultaReniecModel;

    }
    return false;

    //return response.statusCode == 201;
  }

}
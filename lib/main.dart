import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/pages/intro_page.dart';

import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart'as client;
import 'package:socket_io_client/socket_io_client.dart';

void main() {

  client.Socket socket = client.io('http://161.132.215.202:3003',
      OptionBuilder()
          .setTransports(['websocket']) // for Flutter or Dart VM
          .setExtraHeaders({'foo': 'bar'}) // optional
          .build());

  socket.onConnect((_) {
    print('Socket Conectado');
    socket.emit('msg', 'test');
  });

  //When an event recieved from server, data is added to the stream
 // socket.on('event', (data) => streamSocket.addResponse);
  socket.onDisconnect((_) => print('disconnect'));



  runApp(const MyApp());

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Seguridad Ciudadana',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),

    );
  }
}





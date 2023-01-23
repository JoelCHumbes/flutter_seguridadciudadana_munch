/*
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart'as socket;




void main(){
  final client = socket.io('http://161.132.215.202:3003',<String,dynamic>{
    'transports':['websocket'],
  });

  final client = socket.io('http://161.132.215.202:3003');

  client.onconnect((_){
    print('Conectado Papu ...!');

    readLine().listen((String line) => client.emit('stream',line));

  });

  client.on('_connection',(data)=> _printFromServer(data));
}


Stream<String>readLine() => stdin.transform(utf8.decoder).transform(const LineSplitter());

void _printFromServer(String message) => print(message);


*/
import 'dart:async';
import 'package:socket_io/socket_io.dart';

void main() {
   final server = Server();
   
   server.on('connection', (client){
     print('Connect to $client');

    client.on('stream',(data){
     print('Data from client $data');
    });

    Timer(Duration(seconds: 5),(){
      client.emit('msg','Hola Bbta Roys');
    });
   });
   
   server.listen(3000);
   
}
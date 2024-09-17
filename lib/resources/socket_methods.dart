import 'package:flutter/material.dart';
import 'package:lineup/resources/socket_client.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;
  Socket get socketClient => _socketClient;

  // EMITS
  void createRoom() {
    _socketClient.emit('createRoom', {
      'nickname': 'yunus',
    });
  }

  // LISTENERS
  void createRoomListener(
    BuildContext context,
  ) {
    _socketClient.on('hello', (data) {
      print('hello: $data');
    });
  }
}

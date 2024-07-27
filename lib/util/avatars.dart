import 'package:flutter/material.dart';
import 'package:lineup/models/player_avatar_model.dart';

const List<PlayerAvatarModel> avatars = [
  PlayerAvatarModel(
    name: 'Roberto Baggio',
    color: Color.fromRGBO(92, 128, 148, 1),
    path: 'assets/avatars/baggio.png',
    id: 0,
  ),
  PlayerAvatarModel(
    name: 'David Beckham',
    color: Color.fromRGBO(122, 82, 74, 1),
    path: 'assets/avatars/beckham.png',
    id: 1,
  ),
  PlayerAvatarModel(
    name: 'Roberto Carlos',
    color: Color.fromRGBO(82, 65, 27, 1),
    path: 'assets/avatars/carlos.png',
    id: 2,
  ),
  PlayerAvatarModel(
    name: 'Johan Cruyff',
    color: Color.fromRGBO(125, 99, 73, 1),
    path: 'assets/avatars/cruyff.png',
    id: 3,
  ),
  PlayerAvatarModel(
    name: 'Luis Figo',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/figo.png',
    id: 4,
  ),
  PlayerAvatarModel(
    name: 'Gennaro Gattuso',
    color: Color.fromRGBO(124, 95, 90, 1),
    path: 'assets/avatars/gattuso.png',
    id: 5,
  ),
  PlayerAvatarModel(
    name: 'Steven Gerrard',
    color: Color.fromRGBO(121, 81, 68, 1),
    path: 'assets/avatars/gerrard.png',
    id: 6,
  ),
  PlayerAvatarModel(
    name: 'Josep Guardiola',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/guardiola.png',
    id: 7,
  ),
  PlayerAvatarModel(
    name: 'Thierry Henry',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/henry.png',
    id: 8,
  ),
  PlayerAvatarModel(
    name: 'Frank Lampard',
    color: Color.fromRGBO(91, 98, 126, 1),
    path: 'assets/avatars/lampard.png',
    id: 9,
  ),
  PlayerAvatarModel(
    name: 'Diego Maradona',
    color: Color.fromRGBO(91, 111, 136, 1),
    path: 'assets/avatars/maradona.png',
    id: 10,
  ),
  PlayerAvatarModel(
    name: 'Ruud Van Nistelrooy',
    color: Color.fromRGBO(125, 99, 72, 1),
    path: 'assets/avatars/nistelrooy.png',
    id: 11,
  ),
  PlayerAvatarModel(
    name: 'Pele',
    color: Color.fromRGBO(121, 122, 77, 1),
    path: 'assets/avatars/pele.png',
    id: 12,
  ),
  PlayerAvatarModel(
    name: 'Alessandro Del Piero',
    color: Color.fromRGBO(91, 71, 27, 1),
    path: 'assets/avatars/piero.png',
    id: 13,
  ),
  PlayerAvatarModel(
    name: 'Andrea Pirlo',
    color: Color.fromRGBO(124, 95, 90, 1),
    path: 'assets/avatars/pirlo.png',
    id: 14,
  ),
  PlayerAvatarModel(
    name: 'Michel Platini',
    color: Color.fromRGBO(90, 98, 126, 1),
    path: 'assets/avatars/platini.png',
    id: 15,
  ),
  PlayerAvatarModel(
    name: 'Carles Puyol',
    color: Color.fromRGBO(94, 104, 47, 1),
    path: 'assets/avatars/puyol.png',
    id: 16,
  ),
  PlayerAvatarModel(
    name: 'Raul',
    color: Color.fromRGBO(90, 74, 30, 1),
    path: 'assets/avatars/raul.png',
    id: 17,
  ),
  PlayerAvatarModel(
    name: 'Ronaldinho',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/ronaldinho.png',
    id: 18,
  ),
  PlayerAvatarModel(
    name: 'Paul Scholes',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/scholes.png',
    id: 19,
  ),
  PlayerAvatarModel(
    name: 'Socrates',
    color: Color.fromRGBO(120, 122, 77, 1),
    path: 'assets/avatars/socrates.png',
    id: 20,
  ),
  PlayerAvatarModel(
    name: 'Francesco Totti',
    color: Color.fromRGBO(113, 51, 25, 1),
    path: 'assets/avatars/totti.png',
    id: 21,
  ),
  PlayerAvatarModel(
    name: 'Xavi Hernandez',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/xavi.png',
    id: 22,
  ),
  PlayerAvatarModel(
    name: 'Zinedine Zidane',
    color: Color.fromRGBO(91, 98, 126, 1),
    path: 'assets/avatars/zidane.png',
    id: 23,
  ),
];

PlayerAvatarModel getAvatar(int index) {
  return avatars[index];
}

int getAvatarsLength() {
  return avatars.length;
}

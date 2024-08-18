import 'package:flutter/material.dart';
import 'package:lineup/models/avatar_model.dart';

const List<AvatarModel> avatars = [
  AvatarModel(
    name: 'Roberto Baggio',
    color: Color.fromRGBO(92, 128, 148, 1),
    path: 'assets/avatars/baggio.png',
    id: 0,
  ),
  AvatarModel(
    name: 'David Beckham',
    color: Color.fromRGBO(122, 82, 74, 1),
    path: 'assets/avatars/beckham.png',
    id: 1,
  ),
  AvatarModel(
    name: 'Roberto Carlos',
    color: Color.fromRGBO(82, 65, 27, 1),
    path: 'assets/avatars/carlos.png',
    id: 2,
  ),
  AvatarModel(
    name: 'Johan Cruyff',
    color: Color.fromRGBO(125, 99, 73, 1),
    path: 'assets/avatars/cruyff.png',
    id: 3,
  ),
  AvatarModel(
    name: 'Luis Figo',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/figo.png',
    id: 4,
  ),
  AvatarModel(
    name: 'Gennaro Gattuso',
    color: Color.fromRGBO(124, 95, 90, 1),
    path: 'assets/avatars/gattuso.png',
    id: 5,
  ),
  AvatarModel(
    name: 'Steven Gerrard',
    color: Color.fromRGBO(121, 81, 68, 1),
    path: 'assets/avatars/gerrard.png',
    id: 6,
  ),
  AvatarModel(
    name: 'Josep Guardiola',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/guardiola.png',
    id: 7,
  ),
  AvatarModel(
    name: 'Thierry Henry',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/henry.png',
    id: 8,
  ),
  AvatarModel(
    name: 'Frank Lampard',
    color: Color.fromRGBO(91, 98, 126, 1),
    path: 'assets/avatars/lampard.png',
    id: 9,
  ),
  AvatarModel(
    name: 'Diego Maradona',
    color: Color.fromRGBO(91, 111, 136, 1),
    path: 'assets/avatars/maradona.png',
    id: 10,
  ),
  AvatarModel(
    name: 'Ruud Van Nistelrooy',
    color: Color.fromRGBO(125, 99, 72, 1),
    path: 'assets/avatars/nistelrooy.png',
    id: 11,
  ),
  AvatarModel(
    name: 'Pele',
    color: Color.fromRGBO(121, 122, 77, 1),
    path: 'assets/avatars/pele.png',
    id: 12,
  ),
  AvatarModel(
    name: 'Alessandro Del Piero',
    color: Color.fromRGBO(91, 71, 27, 1),
    path: 'assets/avatars/piero.png',
    id: 13,
  ),
  AvatarModel(
    name: 'Andrea Pirlo',
    color: Color.fromRGBO(124, 95, 90, 1),
    path: 'assets/avatars/pirlo.png',
    id: 14,
  ),
  AvatarModel(
    name: 'Michel Platini',
    color: Color.fromRGBO(90, 98, 126, 1),
    path: 'assets/avatars/platini.png',
    id: 15,
  ),
  AvatarModel(
    name: 'Carles Puyol',
    color: Color.fromRGBO(94, 104, 47, 1),
    path: 'assets/avatars/puyol.png',
    id: 16,
  ),
  AvatarModel(
    name: 'Raul',
    color: Color.fromRGBO(90, 74, 30, 1),
    path: 'assets/avatars/raul.png',
    id: 17,
  ),
  AvatarModel(
    name: 'Ronaldinho',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/ronaldinho.png',
    id: 18,
  ),
  AvatarModel(
    name: 'Paul Scholes',
    color: Color.fromRGBO(122, 82, 75, 1),
    path: 'assets/avatars/scholes.png',
    id: 19,
  ),
  AvatarModel(
    name: 'Socrates',
    color: Color.fromRGBO(120, 122, 77, 1),
    path: 'assets/avatars/socrates.png',
    id: 20,
  ),
  AvatarModel(
    name: 'Francesco Totti',
    color: Color.fromRGBO(113, 51, 25, 1),
    path: 'assets/avatars/totti.png',
    id: 21,
  ),
  AvatarModel(
    name: 'Xavi Hernandez',
    color: Color.fromRGBO(94, 105, 47, 1),
    path: 'assets/avatars/xavi.png',
    id: 22,
  ),
  AvatarModel(
    name: 'Zinedine Zidane',
    color: Color.fromRGBO(91, 98, 126, 1),
    path: 'assets/avatars/zidane.png',
    id: 23,
  ),
];

AvatarModel getAvatar(int index) {
  return avatars[index];
}

int getAvatarsLength() {
  return avatars.length;
}

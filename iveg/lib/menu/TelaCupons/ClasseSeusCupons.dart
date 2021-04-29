import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaCupons/ClasseCupom.dart';

class SeusCupons {
  final Cupom cupom;
  final int qtdCupom;

  SeusCupons({@required this.cupom, @required this.qtdCupom});
}

List<SeusCupons> seusCupons = [
  SeusCupons(cupom: ltsCupom[0], qtdCupom: 1),
  SeusCupons(cupom: ltsCupom[1], qtdCupom: 1),
  SeusCupons(cupom: ltsCupom[2], qtdCupom: 1),
  SeusCupons(cupom: ltsCupom[3], qtdCupom: 1),
];

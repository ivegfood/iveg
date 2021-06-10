import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/sobre/BodySobre.dart';
import 'package:iveg/sobre/BottomBarSobre.dart';

class TelaInicialSobre extends StatefulWidget {
  @override
  _TelaInicialSobreState createState() => _TelaInicialSobreState();
}

class _TelaInicialSobreState extends State<TelaInicialSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.green[50],
      body: BodySobre(),
      bottomNavigationBar: BottomBarSobre(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'VEG',
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.green,
      centerTitle: true,
    );
  }
}

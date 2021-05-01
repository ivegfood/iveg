import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/pesquisar/CardPesquisa.dart';

class BodyPesquisar extends StatelessWidget {
  const BodyPesquisar({
    Key key,
    @required this.txtPesquisa,
  }) : super(key: key);

  final TextEditingController txtPesquisa;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        CardPesquisa(vartexto: txtPesquisa),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Categorias',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
    ]);
  }
}
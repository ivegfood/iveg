import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisualizaCupom extends StatefulWidget {
  @override
  _VisualizaCupomState createState() => _VisualizaCupomState();
}

class _VisualizaCupomState extends State<VisualizaCupom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 70, horizontal: 60),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Center(
                    child: Image.asset(
                  "/imagens/cupom.png",
                  height: 250,
                  width: 250,
                )),
                Text(
                  'Aproveite seus Cupons de Desconto Disponíveis!',
                  style: GoogleFonts.staatliches(
                    fontSize: 36,
                    color: Color.fromRGBO(63, 168, 94, 100),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Voltar'),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

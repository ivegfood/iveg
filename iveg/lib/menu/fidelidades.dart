import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Fidelidade extends StatefulWidget {
  @override
  _FidelidadeState createState() => _FidelidadeState();
}

class _FidelidadeState extends State<Fidelidade> {
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
                  "/imagens/fidelidade.png",
                  height: 250,
                  width: 250,
                )),
                Text(
                  'Veja aqui seus descontos de fidelidade!',
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
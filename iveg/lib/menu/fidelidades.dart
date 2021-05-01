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
                Row(
                  children: [
                    Text(
                      'Fidelidades!',
                      style: GoogleFonts.openSans(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
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
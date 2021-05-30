import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/sobre/classes/classes_pessoas.dart';

class ContainerMaior extends StatelessWidget {
  const ContainerMaior({
    Key? key,
    required this.pessoa,
  }) : super(key: key);

  final Pessoas pessoa;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(pessoa.foto))),
            Text(
              pessoa.nome,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              pessoa.descricao,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Habilidades extends StatelessWidget {
  const Habilidades({
    Key? key,
    required this.texto,
    required this.valor,
    required this.icone,
  }) : super(key: key);

  final String texto;
  final int valor;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          Spacer(),
          ...List.generate(
              valor, (index) => Icon(icone, color: Colors.green, size: 15)),
          ...List.generate(10 - valor,
              (index) => Icon(icone, color: Colors.grey[300], size: 15))
        ],
      ),
    );
  }
}

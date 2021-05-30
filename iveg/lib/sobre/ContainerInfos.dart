import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/sobre/classes/classes_pessoas.dart';

class ContainerInfos extends StatelessWidget {
  const ContainerInfos({
    Key? key,
    required this.pessoa,
  }) : super(key: key);

  final Pessoas pessoa;

  @override
  Widget build(BuildContext context) {
    return Container(      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(pessoa.foto),
                )),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            )
          ],
        ),
      ),
    );
  }
}
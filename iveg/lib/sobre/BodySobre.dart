import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/sobre/ContainerAnimado.dart';
import 'package:iveg/sobre/ContainerInfos.dart';
import 'package:iveg/sobre/classes/classes_pessoas.dart';

class BodySobre extends StatefulWidget {
  const BodySobre({
    Key key,
  }) : super(key: key);

  @override
  _BodySobreState createState() => _BodySobreState();
}

class _BodySobreState extends State<BodySobre> {
  int selecao = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    selecao = 0;
                  });
                },
                child: selecao == 0 ? ContainerMaior(pessoa: ltsPessoas[0]) : ContainerInfos(pessoa: ltsPessoas[0])),
            InkWell(
                onTap: () {
                  setState(() {
                    selecao = 1;
                  });
                },
                child: selecao == 1 ? ContainerMaior(pessoa: ltsPessoas[1]) : ContainerInfos(pessoa: ltsPessoas[1])),
            InkWell(
                onTap: () {
                  setState(() {
                    selecao = 2;
                  });
                },
                child: selecao == 2 ? ContainerMaior(pessoa: ltsPessoas[2]) : ContainerInfos(pessoa: ltsPessoas[2])),

            Container (
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Tema: Veg - aplicativo de vendas \n',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Objetivo: Desenvolver um aplicativo para venda de produtos vegetarianos e veganos destinados aos seres humanos e pets em geral.',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),            
          ],
          ),
        ),
        
      );
  }
}

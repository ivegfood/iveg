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
          ],
        ),
      ),
    );
  }
}

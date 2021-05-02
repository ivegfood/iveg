import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:iveg/BottomBarApp.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/menu/TelaDetalhes/acessorios/BotaoVoltar.dart';
import 'package:iveg/menu/drawer.dart';

class TelaOfertas extends StatefulWidget {
  @override
  _TelaOfertasState createState() => _TelaOfertasState();
}

class _TelaOfertasState extends State<TelaOfertas> {
  var cor = Icon(Icons.favorite);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Promoções',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[50],
      body: Container(
        color: Colors.green[50],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      bannerDesconto("/imagens/10off.png"),
                      SizedBox(width: 15),
                      bannerDesconto("/imagens/20off.png"),
                      SizedBox(width: 15),
                      bannerDesconto("/imagens/30off.png"),
                      SizedBox(width: 15),
                      bannerDesconto("/imagens/40off.png"),
                      SizedBox(width: 15),
                      bannerDesconto("/imagens/50off.png"),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text('Famosos no Iveg',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      bannerLojasGrande("/imagens/PrimeiraLoja.png"),
                      SizedBox(height: 10),
                      bannerLojasGrande("/imagens/SegundaLoja.png"),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text('Descontos especias para você',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                bannerLojasPequena("/imagens/lojaUm.png"),
                SizedBox(height: 10),
                bannerLojasPequena("/imagens/lojaDois.png"),
                SizedBox(height: 10),
                bannerLojasPequena("/imagens/lojaUm.png"),
                SizedBox(height: 10),
                bannerLojasPequena("/imagens/lojaDois.png"),
                SizedBox(height: 10),
                bannerLojasPequena("/imagens/lojaUm.png"),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BotaoVoltar(
            text: 'Voltar',
            press: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  Widget bannerDesconto(assetImagem) {
    return ImageButton(
      children: [],
      height: 90,
      width: 180,
      paddingTop: 5,
      pressedImage: Image.asset(
        assetImagem,
      ),
      unpressedImage: Image.asset(assetImagem),
      onTap: () {},
    );
  }

  Widget bannerLojasGrande(assetImagem) {
    return ImageButton(
      children: [],
      height: 180,
      width: 360,
      paddingTop: 5,
      pressedImage: Image.asset(
        assetImagem,
      ),
      unpressedImage: Image.asset(assetImagem),
      onTap: () {},
    );
  }

  Widget bannerLojasPequena(assetImagem) {
    return Row(
      children: [
        ImageButton(
          children: [],
          height: 90,
          width: MediaQuery.of(context).size.width * 0.7,
          paddingTop: 5,
          pressedImage: Image.asset(
            assetImagem,
          ),
          unpressedImage: Image.asset(assetImagem),
          onTap: () {},
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Center(
            child: Container(
              width: 20,
              height: 90,
              child: IconButton(
                  icon: cor,
                  onPressed: () {
                    setState(() {
                      cor = Icon(Icons.favorite, color: Colors.red);
                    });
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

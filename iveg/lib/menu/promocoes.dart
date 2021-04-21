import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagebutton/imagebutton.dart';

import 'package:iveg/menu/pesquisar.dart';

class TelaOfertas extends StatefulWidget {
  @override
  _TelaOfertasState createState() => _TelaOfertasState();
}

class _TelaOfertasState extends State<TelaOfertas> {
  int indexSelecionado = 3;
  var cor = Icon(Icons.favorite_border, color: Colors.grey, size: 50);

  void _onItemTapped(int index) {
    setState(() {
      //Estudar como ocorre a navegação entre as telas da bottomBar
      //Como controle do index é feito?
      indexSelecionado = index;
      if (indexSelecionado == 0) {
        Navigator.pop(context);
      }
      if (indexSelecionado == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaPesquisa()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.staatliches(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                  child: Text(
                'Menu',
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Text('Funcionalidade 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Funcionalidade 2'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Funcionalidade 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
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
              SizedBox(height: 15),
              Text('Lugares incriveis pertinho de você!!!',
                  style: GoogleFonts.codaCaption(fontSize: 15)),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    bannerLojasGrande("/imagens/PrimeiraLoja.png"),
                    SizedBox(width: 15),
                    bannerLojasGrande("/imagens/SegundaLoja.png"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text('Quer desconto?',
                  style: GoogleFonts.codaCaption(fontSize: 15)),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Pedidos',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.free_breakfast),
            label: 'Ofertas',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: indexSelecionado,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
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
              width: 90,
              height: 90,            
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(45)
              ),
              child: IconButton(          
                icon: cor,
                onPressed: () {
                  setState(() {
                    cor = Icon(Icons.favorite, color: Colors.red, size: 50);
                  });
                }),
            ),
          ),
        ),
      ],
    );
  }
}

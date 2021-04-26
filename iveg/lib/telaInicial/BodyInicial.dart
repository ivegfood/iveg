import 'package:flutter/material.dart';
import 'package:iveg/telaInicial/ContainerInicial.dart';
import 'package:iveg/telaInicial/acessorios/BotaoEntrar.dart';

class BodyInicial extends StatefulWidget {
  @override
  _BodyInicialState createState() => _BodyInicialState();
}

class _BodyInicialState extends State<BodyInicial> {
  int paginaAtual = 0;
  List<Map<String, String>> listaImagens = [
    {
      "texto": "Tudo que você precisa em um só lugar!",
      "imagem": "/imagens/market.png"
    },
    {
      "texto":  "Encontre os melhores produtos pertinho de você",
      "imagem": "/imagens/person.png"
    },
    {
      "texto": "Tudo de melhor para o seu pet você encontra aqui",
      "imagem": "/imagens/pet.png"
    },
    {
      "texto": "Presenteie seu melhor amigo!",
      "imagem": "/imagens/gift.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "IVEG",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Goudy Stout',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    paginaAtual = value;
                  });
                },
                itemCount: listaImagens.length,
                itemBuilder: (context, index) => ContainerInicial(
                  image: listaImagens[index]["imagem"],
                  text: listaImagens[index]['texto'],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        listaImagens.length,
                        (index) => scrollAnimado(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    BotaoEntrar(
                      text: "Entrar",
                      press: () {
                        Navigator.pushNamed(context, '/criarconta');
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer scrollAnimado({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: paginaAtual == index ? 20 : 10,
      decoration: BoxDecoration(
        color: paginaAtual == index ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

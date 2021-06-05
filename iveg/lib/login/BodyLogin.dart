import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(
        children: [
          BotoesLogin(
              texto: 'Acessar sua conta cliente',
              press: () {
                Navigator.pushNamed(context, '/entrar');
              },
              icone: Icons.arrow_forward_rounded),
          BotoesLogin(
              texto: 'Acessar sua conta lojista',
              press: () {
                Navigator.pushNamed(context, '/entrarpj');
              },
              icone: Icons.arrow_forward_rounded),
          BotaoCriar(
              texto: 'Criar uma nova conta',
              press: () {
                Navigator.pushNamed(context, '/login');
              },
              icone: Icons.add),
        ],
      ),
    );
  }
}

class BotoesLogin extends StatelessWidget {
  const BotoesLogin({
    Key? key,
    required this.texto,
    required this.press,
    required this.icone,
  }) : super(key: key);

  final String texto;
  final Function() press;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: press,
          child: Row(children: [
            Text(texto),
            Spacer(),
            Icon(icone, color: Colors.grey[300])
          ])),
    );
  }
}

class BotaoGoogle extends StatelessWidget {
  const BotaoGoogle({
    Key? key,
    required this.texto,
    required this.press,
    required this.icone,
  }) : super(key: key);

  final String texto;
  final Function() press;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          color: Colors.blue,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: press,
          child: Row(children: [
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset('assets/imagens/logoGoogle.png'),
                )),
            SizedBox(width: 10),
            Text(texto, style: TextStyle(color: Colors.white)),
            Spacer(),
            Icon(icone, color: Colors.grey[300])
          ])),
    );
  }
}

class BotaoCriar extends StatelessWidget {
  const BotaoCriar({
    Key? key,
    required this.texto,
    required this.press,
    required this.icone,
  }) : super(key: key);

  final String texto;
  final Function() press;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          color: Colors.red,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: press,
          child: Row(children: [
            Text(texto, style: TextStyle(color: Colors.white)),
            Spacer(),
            Icon(icone, color: Colors.grey[300])
          ])),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iveg/Perfil/FotoPerfil.dart';
import 'package:iveg/main.dart';

class BodyPerfil extends StatelessWidget {
  const BodyPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FotoPerfil(),
        SizedBox(height: 20),
        BotoesPerfil(
          texto: 'Minha conta',
          icone: Icons.person_outline,
          press: () {},
        ),
        BotoesPerfil(
          texto: 'Configurações',
          icone: Icons.settings_outlined,
          press: () {},
        ),
        BotoesPerfil(
          texto: 'Ajuda',
          icone: Icons.help_outline,
          press: () {},
        ),
        Spacer(),
        BotaoSair(
          texto: 'Sair',
          icone: Icons.logout,
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TelaInicial()));
          },
        ),
        SizedBox(height: 20)
      ],
    );
  }
}

class BotoesPerfil extends StatelessWidget {
  const BotoesPerfil({
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
            Icon(
              icone,
              size: 25,
              color: Colors.green,
            ),
            SizedBox(width: 15),
            Text(texto),
            Spacer(),
            Icon(Icons.arrow_forward_rounded, color: Colors.grey[100])
          ])),
    );
  }
}

class BotaoSair extends StatelessWidget {
  const BotaoSair({
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
            Icon(
              icone,
              size: 25,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Text(texto,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Spacer(),
            Icon(Icons.arrow_forward_rounded, color: Colors.grey[100])
          ])),
    );
  }
}

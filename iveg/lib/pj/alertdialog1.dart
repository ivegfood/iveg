

import 'package:flutter/material.dart';

showAlertDialog1(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("Aceitar"),
    onPressed: () {
      Navigator.pushNamed(context, '/cadastro_produtos');
    },
  );
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed:  () {
      Navigator.pushNamed(context, '/pj2');
    },
  );

  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text("Aceito os termos de utilizaçao desse aplicativo."),
    actions: [
      aceitarButton,
      cancelaButton,  
    ],
  );
  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
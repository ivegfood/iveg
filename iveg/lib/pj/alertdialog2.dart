

import 'package:flutter/material.dart';

showAlertDialog2(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("Aceitar"),
    onPressed: () {
      Navigator.pushNamed(context, '/menu');
    },
  );
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed:  () {
      Navigator.pushNamed(context, '/inicial');
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
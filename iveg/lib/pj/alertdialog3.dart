

import 'package:flutter/material.dart';

showAlertDialog3(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("Salvar"),
    onPressed: () {
      Navigator.pushNamed(context, '/menu');
    },
  );
  Widget sairButton = TextButton(
    child: Text("Sair"),
    onPressed:  () {
      Navigator.pushNamed(context, '/inicial');
    },
  );
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed:  () {
      Navigator.pushNamed(context, '/pj3');
    },
  );

  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text("Desejo?"),
    actions: [
      sairButton,
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
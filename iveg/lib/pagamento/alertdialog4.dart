import 'package:flutter/material.dart';

showAlertDialog4(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pushNamed(context, '/final');
    },
  );
  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text("Pagamento confirmado."),
    actions: [
      aceitarButton,
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

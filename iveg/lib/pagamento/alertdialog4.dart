import 'package:flutter/material.dart';
import 'package:iveg/TelaFinal/TelaFinal.dart';

showAlertDialog4(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("OK"),
    onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TelaFinal()));
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

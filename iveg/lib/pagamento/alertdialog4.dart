import 'package:flutter/material.dart';

import 'adicionarcartao.dart';

showAlertDialog4(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new AdicionarCartao()));
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

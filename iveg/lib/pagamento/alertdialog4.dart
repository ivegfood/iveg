import 'package:flutter/material.dart';

showAlertDialog4(BuildContext context) {
  // configura os botões
  Widget aceitarButton = TextButton(
    child: Text("Nova compra"),
    onPressed: () {
      Navigator.pushNamed(context, '/pj3');
    },
  );
  Widget cancelaButton = TextButton(
    child: Text("Sair"),
    onPressed:  () {
      Navigator.pushNamed(context, '/inicial');
    },
  );

  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text("Obrigado por adquirir nossos produtos." 
        + "\n" + "Sua encomenda será entregue no endereço cadastrado."),
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
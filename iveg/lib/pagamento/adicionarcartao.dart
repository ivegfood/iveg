import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/TelaFinal/TelaFinal.dart';
import 'package:iveg/pagamento/alertdialog4.dart';

class AdicionarCartao extends StatefulWidget {
  @override
  _AdicionarCartaoState createState() => _AdicionarCartaoState();
}

class _AdicionarCartaoState extends State<AdicionarCartao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  // Bandeiras disponíveis
  List<String> listBand = [
    'visa',
    'mastercard',
    'amex',
    'elo',
    'dinersclub',
    'discover',
    'jcb',
    'aura',
    'hiper',
    'hipercard',
    'rupay'
  ];

  _onTap() async {
    // print('Numero do cartão: $creditCardNumber'); // Numero do cartão digitado
    // print('Nome no cartão: $creditCardName'); // Nome no cartão digitado
    // print('Valido até: $creditCardExpData'); // Validade do cartão
    // print('CVV: $creditCardCVV'); // Código de segurança
    // print('Bandeira: $creditCardBand'); // Bandeira do cartão
    // print('CPF: $creditCardCPF'); // CPF do Titular
    showAlertDialog4(context);
  }
}

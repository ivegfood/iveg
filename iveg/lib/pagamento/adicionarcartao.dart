/*import 'package:flutter/material.dart';
import 'package:flutter_credit_card_detector/flutter_credit_card_detector.dart';

class AdicionarCartao extends StatefulWidget {
  @override
  _AdicionarCartaoState createState() => _AdicionarCartaoState();
}

class _AdicionarCartaoState extends State<AdicionarCartao> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
          dispose: (_, controler) => controler.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'Adicionar Cartão de Crédito',
        theme: ThemeData(
          accentColor: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Adicionar Cartão de Crédito',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Goudy Stout',
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: ListView(
            children: [
              CreditCardWidget(listBand: listBand, onTap: _onTap),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  
                  child: Text('Voltar'),
                ),
                ]
              )
            ],
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
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
    print('Numero do cartão: $creditCardNumber'); // Numero do cartão digitado
    print('Nome no cartão: $creditCardName'); // Nome no cartão digitado
    print('Valido até: $creditCardExpData'); // Validade do cartão
    print('CVV: $creditCardCVV'); // Código de segurança
    print('Bandeira: $creditCardBand'); // Bandeira do cartão
    print('CPF: $creditCardCPF'); // CPF do Titular
  }
}*/
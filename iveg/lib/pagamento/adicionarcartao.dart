import 'package:flutter/material.dart';
import 'package:iveg/login.dart';
import 'package:iveg/pagamento/alertdialog4.dart';
import 'package:flutter_credit_card_brazilian/flutter_credit_card.dart';

class AdicionarCartao extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdicionarCartaoState();
  }
}

class _AdicionarCartaoState extends State<AdicionarCartao> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                cardName: (String value) {
                  print(value);
                },
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      CreditCardForm(
                        formKey: formKey,
                        obscureCvv: true,
                        obscureNumber: true,
                        cardNumber: cardNumber,
                        cvvCode: cvvCode,
                        cardHolderName: cardHolderName,
                        expiryDate: expiryDate,
                        themeColor: Colors.blue,
                        cardNumberDecoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'N??mero do cart??o',
                          hintText: 'XXXX XXXX XXXX XXXX',
                        ),
                        expiryDateDecoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Validade',
                          hintText: 'XX/XX',
                        ),
                        cvvCodeDecoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'CVV',
                          hintText: 'XXX',
                        ),
                        cardHolderDecoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome completo',
                        ),
                        onCreditCardModelChange: onCreditCardModelChange,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                primary: Colors.green,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: const Text(
                                  'Confirmar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'halter',
                                    fontSize: 14,
                                    package: 'flutter_credit_card',
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  showAlertDialog4(context);
                                } else {
                                  print('Cart??o inv??lido');
                                }
                              },
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                primary: Colors.red,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: const Text(
                                  'Cancelar',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'halter',
                                      fontSize: 14),
                                ),
                              ),
                              onPressed: () {
                                      Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context) => PrimeiraTelaInicio()));
                },
                            )
                          ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}

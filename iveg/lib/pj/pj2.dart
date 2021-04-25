
import 'package:flutter/material.dart';
import 'package:iveg/pj/alertdialog1.dart';

class TelaPj2 extends StatefulWidget {
  @override
  _TelaPj2State createState() => _TelaPj2State();
}

class _TelaPj2State extends State<TelaPj2> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Goudy Stout',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 5),
              campoTexto('Razao Social'),
              campoTexto('CNPJ'),
              campoTexto('Endereço'),
              campoTexto('Telefone'),
              botao('Cadastrar'),
            ],
          ),
        ),
      ),
    );
  }

  Widget campoTexto(rotulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: null,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            labelText: rotulo,
            labelStyle: TextStyle(fontSize: 16, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }

  Widget botao(rotulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red),
          child: Text(rotulo, style: TextStyle(fontSize: 24)),
          onPressed: () {
            showAlertDialog1(context);
          }),
    );
  }
}

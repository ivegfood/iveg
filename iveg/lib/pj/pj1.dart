import 'package:flutter/material.dart';

class TelaPj1 extends StatefulWidget {
  @override
  _TelaPj1State createState() => _TelaPj1State();
}

class _TelaPj1State extends State<TelaPj1> {
  var formKey = GlobalKey<FormState>();
  var _txtCodigo = TextEditingController();

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
              // Text(
              //   'Enviamos um código de confirmação para ' +
              //       msg.conteudo +
              //       ', por favor insira o codigo abaixo: ',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20,
              //     fontFamily: 'Goudy Stout',
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(height: 5),
              campoTexto(
                  'Insira o código enviado para o seu Email', _txtCodigo),
              SizedBox(height: 30),
              botao('Continuar', '/pj2')
            ],
          ),
        ),
      ),
    );
  }

  Widget campoTexto(rotulo, variavel) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: variavel,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            labelText: rotulo,
            labelStyle: TextStyle(fontSize: 16, color: Colors.blue),
            // hintText: 'Informe Dados',
            // hintStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }

  Widget botao(rotulo, tela) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
          child: Text(rotulo, style: TextStyle(fontSize: 24)),
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, tela);
            });
          }),
    );
  }
}

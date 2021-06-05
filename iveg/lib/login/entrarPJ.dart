import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TelaEntrarPJ extends StatefulWidget {
  @override
  _TelaEntrarPJState createState() => _TelaEntrarPJState();
}

class _TelaEntrarPJState extends State<TelaEntrarPJ> {

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
          title: Text('VEG'),
          centerTitle: true,
          backgroundColor: Colors.green),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            TextField(
              controller: txtEmail,
              style:
                  TextStyle(color: Colors.brown, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: 'E-mail'),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: txtSenha,
              style:
                  TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), labelText: 'Senha'),
            ),
            SizedBox(height: 40),
            Container(
              width: 150,
              child: OutlinedButton(
                child: Text('Entrar'),
                onPressed: () {
                  setState(() {
                    isLoading = true;
                  });
                  login(txtEmail.text, txtSenha.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  // LOGIN com o Firebase Auth
  //
  void login(email, senha){

    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, password: senha).then((resultado){
        isLoading = false;
        Navigator.pushReplacementNamed(context, '/pj3');
        
    }).catchError((erro){

      var mensagem = '';
      if (erro.code == 'user-not-found'){
        mensagem = 'ERRO: Usuário não encontrado.';
      }else if (erro.code == 'wrong-password'){
        mensagem = 'ERRO: Senha incorreta.';
      }else if (erro.code == 'invalid-email'){
        mensagem = 'ERRO: Email inválido.';
      }else{
        mensagem = 'ERRO: ${erro.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$mensagem'),
            duration: Duration(seconds: 2)
          )
        );
    });

  }
}
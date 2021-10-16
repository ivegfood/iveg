import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iveg/login/componentes/textfieldcontainer.dart';
import 'package:iveg/login/componentes/textfieldsenha.dart';
import 'package:iveg/pj/pj2.dart';

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
      backgroundColor: Colors.green[50],
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Parceiro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'VEG',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/imagens/parceiro.png',
              height: MediaQuery.of(context).size.height * 0.40,
            ),
            SizedBox(height: 20),
            TextFieldEmail(
              controller: txtEmail,
              hintText: 'Email',
              icon: Icons.email,
            ),
            SizedBox(height: 10),
            TextFieldSenha(
              controller: txtSenha,
              hintText: 'Senha',
              icon: Icons.lock,
            ),
            SizedBox(height: 20),
            TextButton(
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white),
                  ))),
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
                login(txtEmail.text, txtSenha.text);
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ainda não é nosso parceiro?  ",
                  style: TextStyle(color: Colors.green[500]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TelaPj2();
                    }));
                  },
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  //
  // LOGIN com o Firebase Auth
  //
  void login(email, senha){
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((resultado){
      isLoading = false;
      Navigator.pushReplacementNamed(context, '/paineladm');
        
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
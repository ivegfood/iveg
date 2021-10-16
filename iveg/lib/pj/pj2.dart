import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login.dart';

class TelaPj2 extends StatefulWidget {
  @override
  _TelaPj2State createState() => _TelaPj2State();
}

class _TelaPj2State extends State<TelaPj2> {
  var txtNomeFantasia = TextEditingController();
  var txtRazaoSocial = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtCNPJ = TextEditingController();
  var txtTelefone = TextEditingController();
  var txtEndereco = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resgistrar \nNovo Parceiro',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFieldLogin(
                    controller: txtNomeFantasia,
                    hintText: 'Nome Fantasia',
                    suffixIcon: Icons.person,
                  ),
                  TextFieldLogin(
                    controller: txtRazaoSocial,
                    hintText: 'Razão Social',
                    suffixIcon: Icons.assignment_ind,
                  ),
                  TextFieldLogin(
                    controller: txtCNPJ,
                    hintText: 'CNPJ',
                    suffixIcon: Icons.assignment_ind,
                  ),
                  TextFieldLogin(
                    controller: txtEndereco,
                    hintText: 'Endereço',
                    suffixIcon: Icons.map_outlined,
                  ),
                  TextFieldLogin(
                    controller: txtTelefone,
                    hintText: 'Telefone',
                    suffixIcon: Icons.date_range_outlined,
                  ),
                  SizedBox(height: 40),
                  TextFieldLogin(
                    controller: txtEmail,
                    hintText: 'E-mail',
                    suffixIcon: Icons.email,
                  ),
                  TextFieldLogin(
                    controller: txtSenha,
                    hintText: 'Senha',
                    suffixIcon: Icons.lock,
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      criarConta(txtNomeFantasia.text, txtRazaoSocial.text, txtCNPJ.text,
                          txtEndereco.text, txtTelefone.text, txtEmail.text, txtSenha.text);
                    },
                    child: BotaoEnviar(),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/criarconta');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        'Cancelar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  //
  // CRIAR CONTA no Firebase Auth
  //
  void criarConta(nomefantasia,razaosocial, cnpj, endereco, telefone, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      //Armazenar dados adicionais no Firestore
      var db = FirebaseFirestore.instance;
      db.collection('UsuariosLojistas').doc(resultado.user!.uid).set({
        'Nome Fantasia': nomefantasia,
        'Razão Social': razaosocial,
        'CNPJ': cnpj,
        'Endereço': endereco,
        'Telefone': telefone,
        'E-Mail': email,
      }).then((valor) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Usuário criado com sucesso'),
            duration: Duration(seconds: 2)));
        Navigator.pushNamed(context, '/bodylogin');
      });
    }).catchError((erro) {
      if (erro.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('ERRO: O email informado já está em uso.'),
            duration: Duration(seconds: 2)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('ERRO: ${erro.message}'),
            duration: Duration(seconds: 2)));
      }
    });
  }
}

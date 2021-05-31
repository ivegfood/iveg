import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
          title: Text('VEG'), centerTitle: true, backgroundColor: Colors.green),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            TextField(
              controller: txtNomeFantasia,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), labelText: 'Nome Fantasia'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtRazaoSocial,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment_ind), labelText: 'Razão Social'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtCNPJ,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment_ind), labelText: 'CNPJ'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtEndereco,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.map_outlined), labelText: 'Endereço'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtTelefone,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  labelText: 'Telefone'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtEmail,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: 'E-mail'),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: txtSenha,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), labelText: 'Senha'),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: OutlinedButton(
                    child: Text('Criar'),
                    onPressed: () {
                      criarConta(txtNomeFantasia.text, txtRazaoSocial.text, txtCNPJ.text,
                          txtEndereco.text, txtTelefone.text, txtEmail.text, txtSenha.text);
                    },
                  ),
                ),
                Container(
                  width: 100,
                  child: OutlinedButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
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

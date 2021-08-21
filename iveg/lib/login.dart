import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/login/BodyLogin.dart';
import 'package:iveg/login/componentes/textfieldcontainer.dart';
import 'package:iveg/login/componentes/textfieldsenha.dart';
import 'package:iveg/pj/alertdialog2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iveg/pj/pj2.dart';
import 'package:date_field/date_field.dart';

class PrimeiraTelaInicio extends StatefulWidget {
  @override
  _PrimeiraTelaInicioState createState() => _PrimeiraTelaInicioState();
}

class _PrimeiraTelaInicioState extends State<PrimeiraTelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.green,
      body: BodyLogin(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'VEG',
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.green,
      centerTitle: true,
    );
  }
}

//Proxima Tela
class Mensagem {
  final String conteudo;
  Mensagem(this.conteudo);
}

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var _txtConteudo = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
            Image.asset(
              'assets/imagens/vegetal.png',
              height: MediaQuery.of(context).size.height * 0.40,
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ClienteParceiro(
                  imagem: 'assets/imagens/imgEntrar.png',
                  texto: 'Clientes',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TelaLogin3();
                    }));
                  },
                ),
                SizedBox(width: 20),
                ClienteParceiro(
                  imagem: 'assets/imagens/parceiro.png',
                  texto: 'Parceiro',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TelaPj2();
                    }));
                  },
                ),
              ]),
            ),
            SizedBox(height: 20),
            Text(
              'Toque para começar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.green[300],
              ),
            ),
          ],
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
              var msg = Mensagem(_txtConteudo.text);
              Navigator.pushNamed(context, tela, arguments: msg);
            });
          }),
    );
  }
}

class ClienteParceiro extends StatelessWidget {
  const ClienteParceiro({
    Key? key,
    required this.imagem,
    required this.texto,
    required this.onTap,
  }) : super(key: key);

  final String imagem;
  final String texto;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagem,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              SizedBox(height: 20),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ));
  }
}

//Proxima tela
class TelaLogin3 extends StatefulWidget {
  @override
  _TelaLogin3State createState() => _TelaLogin3State();
}

class _TelaLogin3State extends State<TelaLogin3> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtCPF = TextEditingController();
  var txtDataNascimento = TextEditingController();
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
                    'Resgistrar \nNova Conta',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFieldLogin(
                    controller: txtNome,
                    hintText: 'Nome',
                    suffixIcon: Icons.person,
                  ),
                  TextFieldLogin(
                    controller: txtCPF,
                    hintText: 'CPF',
                    suffixIcon: Icons.assignment_ind,
                  ),
                  TextFieldLogin(
                    controller: txtEndereco,
                    hintText: 'Endereco',
                    suffixIcon: Icons.map_outlined,
                  ),
                  TextFieldLogin(
                    controller: txtDataNascimento,
                    hintText: 'Data de Nascimento',
                    suffixIcon: Icons.date_range_outlined,
                  ),
                  SizedBox(height: 40),
                  TextFieldLogin(
                    controller: txtEmail,
                    hintText: 'Email',
                    suffixIcon: Icons.email_outlined,
                  ),
                  TextFieldLogin(
                    controller: txtSenha,
                    hintText: 'Senha',
                    suffixIcon: Icons.lock,
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      criarConta(txtNome.text, txtCPF.text, txtEndereco.text,
                          txtDataNascimento.text, txtEmail.text, txtSenha.text);
                    },
                    child: BotaoEnviar(),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
  void criarConta(nome, cpf, endereco, datanascimento, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      //Armazenar dados adicionais no Firestore
      var db = FirebaseFirestore.instance;
      db.collection('UsuariosClientes').doc(resultado.user!.uid).set({
        'Nome': nome,
        'CPF': cpf,
        'Endereço': endereco,
        'Data Nascimento': datanascimento,
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

class BotaoEnviar extends StatelessWidget {
  const BotaoEnviar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        'Enviar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18,
        ),
      )),
    );
  }
}

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(suffixIcon),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/login/BodyLogin.dart';
import 'package:iveg/pj/alertdialog2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      appBar: AppBar(
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
      ),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 5),
              campoTexto(
                  'Informe seu e-mail ou o' + '\n' 'número do seu celular',
                  _txtConteudo),
              SizedBox(height: 30),
              botao('Cliente', '/login2'),
              SizedBox(height: 30),
              botao('Lojista', '/pj1')
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

//Proxima Tela
class TelaLogin2 extends StatefulWidget {
  @override
  _TelaLogin2State createState() => _TelaLogin2State();
}

class _TelaLogin2State extends State<TelaLogin2> {
  var formKey = GlobalKey<FormState>();
  var _txtCodigo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 5),
              campoTexto(
                'Insira o código enviado para' + '\n' 'seu email ou telefone',
                _txtCodigo,
              ),
              SizedBox(height: 30),
              botao('Continuar', '/login3')
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
      appBar: AppBar(
          title: Text('VEG'), centerTitle: true, backgroundColor: Colors.green),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            TextField(
              controller: txtNome,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), labelText: 'Nome'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtCPF,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment_ind), labelText: 'CPF'),
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
              controller: txtDataNascimento,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined), labelText: 'Data de Nascimento'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtEmail,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: 'Email'),
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
                      criarConta(txtNome.text, txtCPF.text, txtEndereco.text, txtDataNascimento.text, txtEmail.text, txtSenha.text);
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

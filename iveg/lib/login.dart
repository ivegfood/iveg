import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimeiraTelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 70, horizontal: 60),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'IVEG',
                style: GoogleFonts.staatliches(
                  fontSize: 52,
                  color: Color.fromRGBO(63, 168, 94, 100),
                ),
              ),
              Text(
                '\n\nantes de achar os melhores\nprodutos veganos do mercado\n\ndeixa eu te conhecer melhor',
                style: GoogleFonts.staatliches(
                  fontSize: 24,
                  color: Color.fromRGBO(61, 70, 54, 100),
                ),
              ),
              Image(
                  image: AssetImage("/imagens/google.png"),
                  width: double.infinity),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: double.infinity, height: 50),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Criar uma conta',
                      style: GoogleFonts.oswald(
                        fontSize: 16,
                        color: Color.fromRGBO(112, 112, 112, 100),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
          'IVEG',
          style: GoogleFonts.staatliches(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Qual é o seu e-mail?',
                style: GoogleFonts.oswald(
                  fontSize: 24,
                  color: Color.fromRGBO(112, 112, 112, 100),
                ),
              ),
              SizedBox(height: 5),
              campoTexto('Email', _txtConteudo),
              SizedBox(height: 30),
              botao('Continuar', '/login2')
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
            labelStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
            hintText: 'Informe Dados',
            hintStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
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
    final Mensagem msg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.staatliches(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Enviamos um código de confirmação para ' +
                    msg.conteudo +
                    ', por favor insira o codigo abaixo: ',
                style: GoogleFonts.oswald(
                  fontSize: 24,
                  color: Color.fromRGBO(112, 112, 112, 100),
                ),
              ),
              SizedBox(height: 5),
              campoTexto('Codigo', _txtCodigo),
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
            labelStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
            hintText: 'Informe Dados',
            hintStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
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
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.staatliches(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Falta bem pouco agora...',
                style: GoogleFonts.oswald(
                  fontSize: 24,
                  color: Color.fromRGBO(112, 112, 112, 100),
                ),
              ),
              SizedBox(height: 5),
              campoTexto('Nome completo'),
              campoTexto('Data de Nascimento'),
              campoTexto('Endereço'),
              campoTexto('Telefone'),
              botao('Cadastrar')
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
          labelStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
          hintText: 'Informe Dados',
          hintStyle: TextStyle(fontSize: 16, color: Colors.green[200]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
      ),
    );
  }

  Widget botao(rotulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Colors.red),
        child: Text(rotulo, style: TextStyle(fontSize: 24)),
        onPressed: () {}
      ),
    );
  }  
}

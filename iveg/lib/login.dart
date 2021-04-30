import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/pj/alertdialog2.dart';

class PrimeiraTelaInicio extends StatefulWidget {
  @override
  _PrimeiraTelaInicioState createState() => _PrimeiraTelaInicioState();
}

class _PrimeiraTelaInicioState extends State<PrimeiraTelaInicio> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[50],    
    body: Container(
      margin: EdgeInsets.all(30),      
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/menu');
                      },                  
                      child: Text('Acessar sua conta cliente',        
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),                   
                      ),
                      style: ElevatedButton.styleFrom(                    
                        primary: Colors.blue,
                      ),
                    ),
                  ),
                ),
                
              Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/pj3');
                      },                  
                      child: Text('Acessar sua conta lojista',        
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),                    
                      ),
                      style: ElevatedButton.styleFrom(                    
                        primary: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Center(
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/menu');
                      },                  
                      child: Image(
                        image: AssetImage('assets/imagens/google.png'),
                        width: double.infinity, 
                        height: 50,                    
                      ),
                    ),
                  ),
              Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/login');
                      },                  
                      child: Text('Criar uma nova conta',        
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),                    
                      ),
                      style: ElevatedButton.styleFrom(                    
                        primary: Colors.red,
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
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 40,
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
              campoTexto('Informe seu e-mail ou o'
                          +'\n' 'número do seu celular', _txtConteudo),
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
          'IVEG',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 40,
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
              campoTexto('Insira o código enviado para'
                          +'\n' 'seu email ou telefone', _txtCodigo,),
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
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 40,
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
          labelStyle: TextStyle(fontSize: 16, color: Colors.blue),
          hintText: 'Informe Dados',
          hintStyle: TextStyle(fontSize: 16, color: Colors.blue),
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
        onPressed: () {
            showAlertDialog2(context);
            }
          ),
    );
  }  
}



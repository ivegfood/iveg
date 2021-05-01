import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class TelaInicialSobre extends StatefulWidget {
  @override
  _TelaInicialSobreState createState() => _TelaInicialSobreState();
}

class _TelaInicialSobreState extends State<TelaInicialSobre> {
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
      margin: EdgeInsets.all(30),      
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(              
                  child: Center(
                    child: Image.asset("/imagens/person.png", 
                    height: 50, width: 50,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Jander Raul',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 12,
                      ),               
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(              
                  child: Center(
                    child: Image.asset("/imagens/person.png", 
                    height: 50, width: 50,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Marcelo Claro',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 12,
                      ),               
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(              
                  child: Center(
                    child: Image.asset("/imagens/person.png", 
                    height: 50, width: 50,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Marcelo Giacomini',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 12,
                      ),               
                    ),
                  ],
                ),
              ],
            ),
            Row(           
              mainAxisAlignment: MainAxisAlignment.center,            
              children: [                
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },                  
                      child: Text('Voltar',        
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
                )
              ],
            ),
          ],          
        ),
      ),
    ));
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicialSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,          
          children: [
            Text('IVEG',        
              style: GoogleFonts.staatliches(
                fontSize: 52,
                color: Color.fromRGBO(63, 168, 94, 100),                          
              ),        
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(              
                  child: Center(child: Image.asset("/imagens/person.png", height: 100, width: 100,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Jander Raul',
                      style: GoogleFonts.staatliches(
                          fontSize: 24,
                          color: Color.fromRGBO(63, 168, 94, 100),
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
                      ),               
                    ),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
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
                  child: Center(child: Image.asset("/imagens/person.png", height: 100, width: 100,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Marcelo Claro',
                      style: GoogleFonts.staatliches(
                          fontSize: 24,
                          color: Color.fromRGBO(63, 168, 94, 100),
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
                      ),               
                    ),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
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
                  child: Center(child: Image.asset("/imagens/person.png", height: 100, width: 100,)),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    Text('Marcelo Giacomini',
                      style: GoogleFonts.staatliches(
                          fontSize: 24,
                          color: Color.fromRGBO(63, 168, 94, 100),
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
                      ),               
                    ),
                    Text('Algumas Informações sobre o aluno',
                      style: GoogleFonts.staatliches(
                          fontSize: 12,
                          color: Color.fromRGBO(104, 112, 97, 100),
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
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 100),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 100),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 100),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 100),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(112, 112, 112, 100),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
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
                        Navigator.pushNamed(context, '/Inicial');
                      },                  
                      child: Text('Entrar',        
                        style: GoogleFonts.staatliches(
                          fontSize: 24,
                          color: Colors.white,                                 
                        ),                    
                      ),
                      style: ElevatedButton.styleFrom(                    
                        primary: Color.fromRGBO(232, 61, 54, 100),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],          
        ),
      ),
    );
  }
}
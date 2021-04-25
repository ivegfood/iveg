import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';


 class TelaInicialSobre extends StatefulWidget {
  @override
  _TelaInicialSobreState createState() => _TelaInicialSobreState();
}

class _TelaInicialSobreState extends State<TelaInicialSobre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,          
          children: [
            Text('IVEG',        
              style: TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontFamily: 'Goudy Stout',
                fontWeight: FontWeight.bold,                         
              ),        
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
                    Text('Jander Raul',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Goudy Stout',
                          fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Goudy Stout',
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
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Goudy Stout',
                          fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Goudy Stout',
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
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Goudy Stout',
                          fontWeight: FontWeight.bold,
                      ), 
                    ),
                    SizedBox(height: 10),
                    Text('Algumas Informações sobre o aluno',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Goudy Stout',
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
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.all(5),                
                  decoration: BoxDecoration(
                    color: Colors.grey,
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
                        Navigator.pushNamed(context, '/login');
                      },                  
                      child: Text('Entrar',        
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Goudy Stout',                               
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
    );
  }
}
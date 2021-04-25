import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class SegundaTelaInicial extends StatelessWidget {
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
            Container(              
              child: Center(child: Image.asset("/imagens/person.png", height: 250, width: 250,)),
            ),
            Text('Para você',        
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Goudy Stout',
                fontWeight: FontWeight.bold,         
              ),       
            ),
            Text('Encontre os melhores produtos pertinho de você',        
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Goudy Stout',
                fontWeight: FontWeight.bold,            
              ),
              textAlign: TextAlign.center,
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
                    color: Colors.grey,
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
              ],
            ),
            Row(           
              mainAxisAlignment: MainAxisAlignment.spaceAround,            
              children: [
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 150, height: 50),
                    child: OutlinedButton(                
                      onPressed: (){}, 
                      child: Text('Entrar',        
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Goudy Stout',
                            fontWeight: FontWeight.bold,                               
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 150, height: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/inicial3');
                      },                  
                      child: Text('Continuar',        
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Goudy Stout',
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
    );
  }
}
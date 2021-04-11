import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaSobreGift extends StatefulWidget {
  @override
  _TelaSobreGiftState createState() => _TelaSobreGiftState();
}

class _TelaSobreGiftState extends State<TelaSobreGift> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(              
              child: Center(child: Image.asset("/imagens/gift.png", height: 250, width: 250,)),
            ),
            Text('Para seu pet',        
              style: GoogleFonts.staatliches(
                fontSize: 24,
                color: Color.fromRGBO(63, 168, 94, 100),          
              ),       
            ),
            Text('Tudo de melhor para o seu pet você encontra aqui',        
              style: GoogleFonts.staatliches(
                fontSize: 24,
                color: Color.fromRGBO(104, 112, 97, 100),            
              ),
              textAlign: TextAlign.center,
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
                        style: GoogleFonts.staatliches(
                          fontSize: 24,
                          color: Color.fromRGBO(112, 112, 112, 100),                                
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 150, height: 50),
                    child: ElevatedButton(
                      onPressed: (){},                  
                      child: Text('Continuar',        
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
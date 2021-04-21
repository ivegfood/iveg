import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimeiraTelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
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
            Container(
              child: Center(
                  child: Image.asset(
                "/imagens/market.png",
                height: 250,
                width: 250,
              )),
            ),
            Text(
              'Seus Favoritos',
              style: GoogleFonts.staatliches(
                fontSize: 24,
                color: Color.fromRGBO(63, 168, 94, 100),
              ),
            ),
            Text(
              'Todos os seus restaurantes favoritos em um só lugar',
              style: GoogleFonts.staatliches(
                fontSize: 24,
                color: Color.fromRGBO(104, 112, 97, 100),
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
                    color: Color.fromRGBO(112, 112, 112, 100),
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
                    color: Color.fromRGBO(220, 220, 220, 100),
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
                    constraints:
                        BoxConstraints.tightFor(width: 150, height: 50),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Entrar',
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
                    constraints:
                        BoxConstraints.tightFor(width: 150, height: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/inicial2');
                      },
                      child: Text(
                        'Continuar',
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

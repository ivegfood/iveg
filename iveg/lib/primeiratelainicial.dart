import 'package:flutter/material.dart';

class PrimeiraTelaInicial extends StatefulWidget {
  @override
  _PrimeiraTelaInicialState createState() => _PrimeiraTelaInicialState();
}
class _PrimeiraTelaInicialState extends State<PrimeiraTelaInicial>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Goudy Stout',
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
            Text(
              'IVEG',
              style: TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontFamily: 'Goudy Stout',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Center(
                  child: Image.asset(
                "/imagens/market.png",
                height: 250,
                width: 250,
                )
              ),
            ),
            Text(
              'Seus Favoritos',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontFamily: 'Goudy Stout',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Tudo que você precisa em um só lugar!',
              style: TextStyle(
                color: Colors.grey,
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
                    constraints:
                        BoxConstraints.tightFor(width: 105, height: 50),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Goudy Stout',
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 105, height: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/inicial2');
                      },
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Goudy Stout',
                            fontWeight: FontWeight.bold,
                          )
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

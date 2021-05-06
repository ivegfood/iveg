import 'package:flutter/material.dart';
import 'package:iveg/TelaFinal/BottomBarFinal.dart';

class TelaFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Container(height: double.infinity, child: BodyFinal()),
      bottomNavigationBar: BottomBarFinal(),
    );
  }
}

class BodyFinal extends StatelessWidget {
  const BodyFinal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 100,
              ),
            ),
            Text('Pedido Realizado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              'Obrigado por adquirir nossos produtos.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Sua encomenda será entregue no endereço cadastrado.',
              maxLines: 2,
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';
import 'package:iveg/menu/TelaProdutoPet/acessorios/ContainerPet.dart';

class BodyTelaPet extends StatelessWidget {
  const BodyTelaPet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/icones/loja_icone.png')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Produtos',
                  style: GoogleFonts.openSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
                        itemCount: carCompras.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: ContainerPet(carrinho: carCompras[index]),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

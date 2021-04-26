import 'package:flutter/material.dart';
import 'package:iveg/car_compras/acessorios/botao_fim_compra.dart';
import 'package:iveg/pagamento/adicionarcartao.dart';

class BBarCarrinho extends StatelessWidget {
  const BBarCarrinho({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Colors.grey[100].withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.receipt, size: 20)
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/visualizacupom');
                  },
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/produtoh');
                  },
                  child: Text("Continuar comprando")),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey[600],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "R\$ 205.97",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: BotaoFimCompra(
                    text: "Pagar",
                    press: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AdicionarCartao()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

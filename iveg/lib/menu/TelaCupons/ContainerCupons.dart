import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaCupons/ClasseSeusCupons.dart';

class ContainerCupons extends StatefulWidget {
  const ContainerCupons({Key key, @required this.cupons}) : super(key: key);
  final SeusCupons cupons;

  @override
  _ContainerCuponsState createState() => _ContainerCuponsState();
}

class _ContainerCuponsState extends State<ContainerCupons> {
  var cupomSelecionado = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(widget.cupons.cupom.imgProduto),
                  )),
              SizedBox(width: 10),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.cupons.cupom.nmCupom, style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('${widget.cupons.cupom.valorCupom} % de desconto', style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}

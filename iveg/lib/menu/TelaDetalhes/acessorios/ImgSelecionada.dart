import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';

class ImagensProduto extends StatefulWidget {
  const ImagensProduto({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final ProdutosPet produto;

  @override
  _ImagensProdutoState createState() => _ImagensProdutoState();
}

class _ImagensProdutoState extends State<ImagensProduto> {
  int imagemSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200]),
            child: Image.asset(widget.produto.imgProduto[imagemSelecionada]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.produto.imgProduto.length, (index) => imagemMenor(index))
          ],
        )
      ],
    );
  }

  GestureDetector imagemMenor(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          imagemSelecionada = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  imagemSelecionada == index ? Colors.red : Colors.transparent),
        ),
        child: Image.asset(widget.produto.imgProduto[index]),
      ),
    );
  }
}
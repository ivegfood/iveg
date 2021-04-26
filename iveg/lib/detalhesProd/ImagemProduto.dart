import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';

class ImagemProduto extends StatefulWidget {
  const ImagemProduto({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final ProdutosPet produto;

  @override
  _ImagemProdutoState createState() => _ImagemProdutoState();
}

class _ImagemProdutoState extends State<ImagemProduto> {
  int imagemSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.produto.id.toString(),
              child: Image.asset(widget.produto.imgProduto[imagemSelecionada]),
            ),
          ),
        )
      ],
    );
  }
}

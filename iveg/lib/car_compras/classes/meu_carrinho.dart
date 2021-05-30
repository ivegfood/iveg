import 'package:iveg/car_compras/classes/produtos_pet.dart';

class MeuCarrinho {
  final ProdutosPet produto;  
  final int qtdItens;

  MeuCarrinho({required this.produto, required this.qtdItens});
}

List<MeuCarrinho> carCompras = [
  MeuCarrinho(produto: ltsProdPets[0], qtdItens: 2),
  MeuCarrinho(produto: ltsProdPets[1], qtdItens: 1),
  MeuCarrinho(produto: ltsProdPets[3], qtdItens: 1),
];

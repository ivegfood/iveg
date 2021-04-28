import 'package:flutter/material.dart';

class CardPesquisa extends StatelessWidget {
  const CardPesquisa({
    Key key, 
    @required this.vartexto
  }) : super(key: key);

  final TextEditingController vartexto;

  get formKey => GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                child: TextFormField(
                    controller: vartexto,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Produtos ou Lugares',
                      icon: Icon(Icons.search),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

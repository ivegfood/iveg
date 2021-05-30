import 'package:flutter/material.dart';

class ContainerInicial extends StatelessWidget {
  const ContainerInicial({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),        
        Image.asset(
          image!,
          height: 265,
          width: 235,
        ),        
        Spacer(flex: 2),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BotaoAdicionar extends StatelessWidget {
  const BotaoAdicionar({
    Key key,
    this.texto,
    this.press,
  }) : super(key: key);
  final String texto;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.green,
        onPressed: press,
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

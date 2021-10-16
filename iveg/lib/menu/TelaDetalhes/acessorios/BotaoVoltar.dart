import 'package:flutter/material.dart';

class BotaoVoltar extends StatelessWidget {
  const BotaoVoltar({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      // ignore: deprecated_member_use
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.red,
        onPressed: press,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

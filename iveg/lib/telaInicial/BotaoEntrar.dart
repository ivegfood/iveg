import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoEntrar extends StatelessWidget {
  const BotaoEntrar({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
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
        child: Text(text,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}

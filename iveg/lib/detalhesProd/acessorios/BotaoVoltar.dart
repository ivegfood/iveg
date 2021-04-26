import 'package:flutter/material.dart';

class BotaoVoltar extends PreferredSize {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 40,
          width: 40,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              color: Colors.white,
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
              child: Center(child: Icon(Icons.arrow_back))),
        ),
      ),
    );
  }
}

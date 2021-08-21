import 'package:flutter/material.dart';

class TextFieldSenha extends StatefulWidget {
  const TextFieldSenha({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData icon;

  @override
  _TextFieldSenhaState createState() => _TextFieldSenhaState();
}

class _TextFieldSenhaState extends State<TextFieldSenha> {
  bool _obscureText = true;

  void alteraEstado() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          obscureText: _obscureText,
          controller: widget.controller,
          decoration: InputDecoration(
            icon: Icon(
              widget.icon,
              color: Colors.green[200],
            ),
            hintText: widget.hintText,
            border: InputBorder.none,
            suffixIcon: InkWell(
            onTap: alteraEstado,
            child: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.green[200],
            ),
        ),
          ),
          style: TextStyle(color: Colors.green[200]),
        ),
      ),
    );
  }
}

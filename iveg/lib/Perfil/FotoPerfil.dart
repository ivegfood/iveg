import 'package:flutter/material.dart';

class FotoPerfil extends StatelessWidget {
  const FotoPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Stack(            
        clipBehavior: Clip.none, fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/imagens/JanderRaul.jpeg"),
          ),
          Positioned(
            bottom: 0,
            right: -24,
            child: SizedBox(
              height: 55,
              width: 55,
              // ignore: deprecated_member_use
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), 
                  side: BorderSide(color: Colors.green)),
                color: Colors.grey[300],
                  onPressed: () {},
                  child: Container(
                    child: Icon(Icons.photo_camera_outlined, color: Colors.green)
                  )),
            ),
          )
        ],
      ),
    );
  }
}
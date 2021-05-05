import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaCupons/ClasseCupom.dart';
import 'package:iveg/menu/TelaCupons/ClasseSeusCupons.dart';
import 'package:iveg/menu/TelaCupons/ContainerCupons.dart';

class BodyCupons extends StatelessWidget {
  const BodyCupons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Meus cupons de desconto: ',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(height: 10),
                      ...List.generate(
                          ltsCupom.length,
                          (index) => ContainerCupons(cupons: seusCupons[index]))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

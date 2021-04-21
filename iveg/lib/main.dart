import 'package:flutter/material.dart';
import 'login.dart';
// import 'menu/menu.dart';
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'iVeg',
//       home: PrimeiraTelaInicio(),
//       theme: ThemeData(
//           primaryColor: Colors.green[500],
//           backgroundColor: Colors.grey[100],
//           fontFamily: 'Open Sans',
//           textTheme: TextTheme(
//             headline1: TextStyle(
//                 fontSize: 22, color: Colors.white, fontStyle: FontStyle.italic),
//             headline2: TextStyle(fontSize: 18, color: Colors.green[300]),
//           )),
//       routes: {
//         '/login': (context) => TelaLogin(),
//         '/login2': (context) => TelaLogin2(),
//         '/login3': (context) => TelaLogin3(),
//         '/menu': (context) => TelaMenu(),
//         // '/alimentoH': (context) => TelaAlimentoH(),
//         // '/alimentoP': (context) => TelaAlimentoP(),
//         // '/bebidaH': (context) => TelaBebidaH(),
//         // '/bebidaP': (context) => TelaBebidaP(),
//         // '/utilidadesH': (context) => TelaUtilidadesH(),
//         // '/utilidadesP': (context) => TelaUtilidadesP(),
//       }
//     )
//   );
// }
// =======

import 'PrimeiraTelaInicial.dart';
import 'QuartaTelaInicial.dart';
import 'SegundaTelaInicial.dart';
import 'TelaInicialSobre.dart';
import 'TerceiraTelaInicial.dart';
import 'Menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Iveg',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/inicial1',
    routes: {
      '/inicial': (context) => TelaInicial(),
      '/inicial1': (context) => PrimeiraTelaInicial(),
      '/inicial2': (context) => SegundaTelaInicial(),
      '/inicial3': (context) => TerceiraTelaInicial(),
      '/inicial4': (context) => QuartaTelaInicial(),
      '/inicial5': (context) => TelaInicialSobre(),
      '/Menu': (context) => TelaMenu(),
    },
  ));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(63, 168, 94, 100),
      body: Center(
        child: TextButton(
          child: Text(
            'IVEG',
            style: TextStyle(
              color: Colors.white,
              fontSize: 57,
              fontFamily: 'Goudy Stout',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/inicial1');
          },
        ),
      ),
    );
  }
}

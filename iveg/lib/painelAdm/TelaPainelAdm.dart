import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TelaPainelAdm extends StatelessWidget {
  const TelaPainelAdm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey[800]),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Painel\nAdministrativo',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Vendas ultimos 7 dias',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Divider(),
              GraficoVendas(),
              SizedBox(height: 20),
              Text(
                'Gerenciar Produtos',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 100,
                child: Row(
                  children: [
                    GerenciarProdutos(
                      text: 'Adicionar',
                      icon: Icons.add,
                      color: Colors.green,
                      press: () {
                        Navigator.pushNamed(context, '/cadastroprod');
                      },
                    ),
                    GerenciarProdutos(
                      text: 'Remover',
                      icon: Icons.delete,
                      color: Colors.red,
                      press: () {},
                    ),
                    GerenciarProdutos(
                      text: 'Alterar',
                      icon: Icons.price_change_outlined,
                      color: Colors.blue,
                      press: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Historico de Vendas',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Divider(),
              HistoricoDeVendas(),
              SizedBox(height: 20),
              Text(
                'Visualizar Produtos',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/produtoh');
                },
                child: BotaoProdutos()
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class BotaoProdutos extends StatelessWidget {
  const BotaoProdutos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Todos os seus Produtos',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class HistoricoDeVendas extends StatefulWidget {
  const HistoricoDeVendas({
    Key? key,
  }) : super(key: key);

  @override
  _HistoricoDeVendasState createState() => _HistoricoDeVendasState();
}

class _HistoricoDeVendasState extends State<HistoricoDeVendas> {
  bool expandir = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      width: MediaQuery.of(context).size.width * 0.90,
      height: expandir ? 200 : MediaQuery.of(context).size.height * 0.88,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.grey)),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                expandir = !expandir;
              });
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: expandir ? Text('Expandir') : Text('Diminuir'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: expandir ? Icon(Icons.arrow_downward) : Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Data da Venda: 21/08/2021'),
                          Text('Cliente: Falano da Silva Sauro'),
                        ],
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          'R\$ 25,00',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}

class GerenciarProdutos extends StatelessWidget {
  const GerenciarProdutos({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: Colors.white,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GraficoVendas extends StatelessWidget {
  const GraficoVendas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Row(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.50,
            child: PieChart(PieChartData(startDegreeOffset: -90, sections: [
              PieChartSectionData(
                  value: 25,
                  radius: 25,
                  showTitle: false,
                  color: Colors.yellow),
              PieChartSectionData(
                  value: 15,
                  radius: 15,
                  showTitle: false,
                  color: Colors.orange),
              PieChartSectionData(
                  value: 28, radius: 28, showTitle: false, color: Colors.red),
              PieChartSectionData(
                  value: 17, radius: 17, showTitle: false, color: Colors.pink),
              PieChartSectionData(
                  value: 19, radius: 19, showTitle: false, color: Colors.blue),
              PieChartSectionData(
                  value: 32,
                  radius: 32,
                  showTitle: false,
                  color: Colors.lightBlue),
              PieChartSectionData(
                  value: 38, radius: 38, showTitle: false, color: Colors.green),
            ])),
          ),
          Spacer(),
          Column(
            children: [
              DiaSemana(
                text: 'Domingo',
                color: Colors.yellow,
              ),
              DiaSemana(
                text: 'Segunda',
                color: Colors.orange,
              ),
              DiaSemana(
                text: 'Terça',
                color: Colors.red,
              ),
              DiaSemana(
                text: 'Quarta',
                color: Colors.pink,
              ),
              DiaSemana(
                text: 'Quinta',
                color: Colors.blue,
              ),
              DiaSemana(
                text: 'Sexta',
                color: Colors.lightBlue,
              ),
              DiaSemana(
                text: 'Sabado',
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DiaSemana extends StatelessWidget {
  const DiaSemana({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        height: 25,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

import 'package:iveg/produto.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: Icon(Icons.pets))
                ],
              ),
              title: Text(
                'IVEG',
                style: GoogleFonts.staatliches(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            body: TabBarView(
              children: [
                //Aba humano
                Column(
                  children: [Container(
                          padding: EdgeInsets.all(40),
                          color: Colors.grey[300],
                          height: 320,
                          child: Scrollbar(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 200,
                                    height: 200,
                                    margin: EdgeInsets.all(20),
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text('Item $index'),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      
                       Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          color: Colors.grey[300],
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 200,
                                  height: 200,
                                  margin: EdgeInsets.all(20),
                                  color: Colors.grey[400],
                                  child: Row(children: [
                                    Container(
                                      width: 150,
                                      child: Center(
                                        child: Image.network(
                                            'https://picsum.photos/id/${index + 1}/120'),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus congue sem, at auctor mauris ornare vel. Nullam quis libero sit amet ante convallis ornare. '),
                                            SizedBox(height: 20),
                                            Container(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton(
                                                child: Text('comprar'),
                                                onPressed: () {},
                                              ),
                                            )
                                          ]),
                                    )),
                                  ]),
                                );
                              }),
                        ),
                      ),
                  ]                  
                ),

                //Aba Pet

                Column(
                               
                ),



            ]),
          )),
    );
  }
}

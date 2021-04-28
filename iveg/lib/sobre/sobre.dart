/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TelaSobreGift.dart';
import 'TelaSobrePeople.dart';
import 'TelaSobrePerson.dart';
import 'TelaSobrePets.dart';
import 'TelaSobrePlace.dart';

class TelaSobre extends StatefulWidget {
  @override
  _TelaSobreState createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(            
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.place)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.pets)),
                Tab(icon: Icon(Icons.card_giftcard)),
                Tab(icon: Icon(Icons.people)),
              ],
            ),
            backgroundColor: Theme.of(context).primaryColor,
            title: Center(
              child: Text(
                'IVEG',
                style: GoogleFonts.staatliches(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            )           
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          body: TabBarView(
            children: [
              TelaSobrePlace(),
              TelaSobrePerson(),
              TelaSobrePets(),
              TelaSobreGift(),
              TelaSobrePeople(),
            ]
          ),
        ),
      ),
    );
  }
}
 */
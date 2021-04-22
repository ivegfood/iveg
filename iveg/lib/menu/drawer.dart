import 'package:flutter/material.dart';

class TesteDrawer extends StatefulWidget {
  @override
  _TesteDrawerState createState() => _TesteDrawerState();
}

class _TesteDrawerState extends State<TesteDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
                child: Text(
              'Menu',
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            title: Text('Funcionalidade 1'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Funcionalidade 2'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Funcionalidade 3'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

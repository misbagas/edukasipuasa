
import 'package:flutter/material.dart';
import 'menus/inbox_screen.dart';


class DrawerItem {
  final String title;
  final IconData iconData;

  DrawerItem({this.title, this.iconData});
}

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _selectedDrawerInbox = 0;
  final drawerItem = [
    DrawerItem(title: 'inbox', iconData: Icons.inbox),

  ];
  final List<Widget> menu = <Widget>[
    InBoxScreen(),

  ];

  _onSelectedItem(int index) {
    setState(() {
      _selectedDrawerInbox = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(drawerItem[_selectedDrawerInbox].title)),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Bahh'),
              accountEmail: Text('misbahganteng.comh'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'H',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              title: Text(
                drawerItem[0].title,
              ),
              leading: Icon(drawerItem[0].iconData),
              onTap: () {
                _onSelectedItem(0);
              },
              selected: 0 == _selectedDrawerInbox,
            ),
          ],
        ),
      ),
      body: menu.elementAt(_selectedDrawerInbox),
    );
  }
}

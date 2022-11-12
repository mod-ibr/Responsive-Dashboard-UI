import 'package:flutter/material.dart';

Color? defaultBackgroundColor = Colors.grey[300];
Color? appBarColor = Colors.amber[900];
AppBar myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text('Responsive DashBoard UI'),
  centerTitle: true,
);
TextStyle drawerTextColor = TextStyle(
  color: Colors.grey[900],
  letterSpacing: 3,
);
EdgeInsets tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
Drawer myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        child: Stack(
          children: [
            Container(
              color: Colors.amber[900],
            ),
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.account_circle,
                size: 64,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'DASHBOARD',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'SETTINGS',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'ABOUT',
            style: drawerTextColor,
          ),
        ),
      ),
      const Expanded(child: SizedBox()),
      Padding(
        padding: tilePadding,
        child: const ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.red,
          ),
          title: Text(
            'LOGOUT',
            style: TextStyle(
              color: Colors.red,
              letterSpacing: 3,
            ),
          ),
        ),
      ),
    ],
  ),
);

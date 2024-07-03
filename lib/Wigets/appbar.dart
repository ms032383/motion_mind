import 'package:flutter/material.dart';
import 'package:motionmind/Utils/color.dart';

var Appbar = AppBar(
  centerTitle: true,
  backgroundColor: primarycolor,
  title: Text('Motion Mind'),
  actions: [Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Icon(Icons.search_rounded),
  )],
);

var drawer = Drawer(
  backgroundColor: primarycolor,
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading:Icon(Icons.home),
        title: Text('D A S B O A D'),
      ),
      ListTile(
        leading:Icon(Icons.chat),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading:Icon(Icons.settings),
        title: Text('S E T T I N G'),
      ),
    ],
  ),
);
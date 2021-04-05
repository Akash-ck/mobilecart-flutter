import 'package:flutter/material.dart';


Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'POCO', 'iconPath': 'assets/apple.png'},
  {'name': 'MI', 'iconPath': 'assets/mi.jpg'},
  {'name': 'REALME', 'iconPath': 'assets/iphone.jpg'},
  {'name': 'IPHONE', 'iconPath': 'assets/poco.jpeg'},

];

List<Map> drawerItems=[
  {
    'icon': Icons.favorite,
    'title' : 'Cart'
  },
  {
    'icon': Icons.mail,
    'title' : 'Delivery'
  },

  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Profile'
  },
];
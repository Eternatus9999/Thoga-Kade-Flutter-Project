import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends AppBar{
  AppBar create() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Center(child: Text("Thoga Kade", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),)),
    );
  }
}
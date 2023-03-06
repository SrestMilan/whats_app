import 'package:first_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WhatApp());
}

class WhatApp extends StatelessWidget {
  const WhatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

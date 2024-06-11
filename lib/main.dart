// lib/main.dart

import 'package:flutter/material.dart';
import 'landingpage.dart'; // importer la landing page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter diabète',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(), // Démarrer sur la première page
    );
  }
}


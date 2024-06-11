// lib/landingpage.dart

import 'package:flutter/material.dart';
import 'homepage.dart';

class LandingPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    // Attendre 5 secondes et rediriger vers la deuxième page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB9F9DA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Diabète AI',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/glucometre3.jpg', // Assurez-vous de mettre votre propre chemin d'accès à l'image
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}

// lib/homepage.dart

import 'package:flutter/material.dart';
import 'inscriptionpage.dart'; // Importer la page d'inscription
import 'connexionpage.dart';   // Importer la page de connexion

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB9F9DA), // Même couleur que la landing page
      body: Center( // Utiliser Center pour centrer le contenu
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Centrer les éléments horizontalement
            children: <Widget>[
              Text(
                'Bienvenu sur Diabète AI',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Espacement entre les paragraphes
              Text(
                'L’application qui vous accompagne dans la gestion de votre diabète',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40), // Espacement avant l'image
              Image.asset(
                'assets/landing.jpg', // Assurez-vous de mettre votre propre chemin d'accès à l'image
                width: 400,
                height: 400,
              ),
              SizedBox(height: 40), // Espacement avant le bouton
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConnexionPage()), // Rediriger vers la page de connexion
                  );
                },
                child: Text('Se connecter'),
              ),
              SizedBox(height: 20), // Espacement avant le texte du lien
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InscriptionPage()), // Utiliser la page d'inscription
                  );
                },
                child: Text(
                  'Vous n’avez pas de compte? Inscrivez-vous',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

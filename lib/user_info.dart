import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         const SizedBox(height: 20.0),
        Center(child:
        // Bildbereich
        CircleAvatar(
          radius: 100.0, // Radius des Avatars
          backgroundImage: AssetImage('assets/BG_only.png'), // Pfad zum Avatar-Bild
          child: Stack(children: [
            Image.asset('assets/SUNIMO_MOTHER_Ai.png'),
          ]
        ))),
        const SizedBox(height: 20.0), // Abstand zwischen Avatar und Text
        // Textbereich (weißgrau)
        Container(
          color: Colors.grey[50], // Weißgrauer Hintergrund
          padding: const EdgeInsets.all(23.0), // Innenabstand für den Text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Über Sunimo',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
                maxLines: 1,
                overflow:
                    TextOverflow.ellipsis, // Text abschneiden, wenn zu lang
              ),
              const SizedBox(height: 4.0), // Kleiner Abstand
              Text(
                'FluxFox',
                style: TextStyle(fontSize: 20.0, color: Colors.grey[600]),
              ),
              const SizedBox(height: 4.0), // Kleiner Abstand
              Text(
                'Willkommen in der Welt der Sunimos! Erleben Sie die Vielfalt unserer geliebten außerirdischen Wesen, die Sie mit Liebe und Empathie versorgen. Jedes Sunimo ist einzigartig und bringt Freude in Ihr Leben. Lassen Sie sich von der Magie der Sunimos verzaubern und entdecken Sie die Schönheit, die sie in unsere Welt bringen können.',
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

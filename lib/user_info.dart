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
          backgroundImage: AssetImage('assets/totoro.jpg'), // Pfad zum Avatar-Bild
        )),
        const SizedBox(height: 20.0), // Abstand zwischen Avatar und Text
        // Textbereich (weißgrau)
        Container(
          color: Colors.grey[50], // Weißgrauer Hintergrund
          padding: const EdgeInsets.all(23.0), // Innenabstand für den Text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Über mich',
                style: TextStyle(
                  fontSize: 20.0,
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
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
              const SizedBox(height: 4.0), // Kleiner Abstand
              Text(
                'Lorem ipsum fluxi sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

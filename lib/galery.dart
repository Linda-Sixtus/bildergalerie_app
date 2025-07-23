import 'package:flutter/material.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          elevation: 7,
          color: Colors.teal[50],
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('A walk in the park'),
          ),
        ),
        Card(
          elevation: 7,
          color: Colors.teal[200],
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
          ),
        ),
        Card(
          elevation: 7,
          color: Colors.teal[300],
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('in the park'),
          ),
        ),
        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 114, 220, 250),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('blue winter'),
          ),
        ),

        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 194, 227, 223),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('in the park'),
          ),
        ),
        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 234, 105, 14),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Summertime'),
          ),
        ),

        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 238, 197, 107),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('spring'),
          ),
        ),

        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 255, 153, 153),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Autumn'),
          ),
        ),
        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 255, 204, 153),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Winter'),
          ),
        ),

        Card(
          elevation: 7,
          color: const Color.fromARGB(255, 153, 204, 255),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Rainy days'),
          ),
        ),
      ],
    );




  }}
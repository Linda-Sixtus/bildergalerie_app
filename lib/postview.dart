import 'package:flutter/material.dart';
import 'gallery_item.dart';

class PostViewPage extends StatelessWidget {

  final GalleryItem galleryItem;

  const PostViewPage({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
                flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(200, 209, 130, 255),
                const Color.fromARGB(200, 255, 213, 240),
                const Color.fromARGB(200, 112, 229, 255),
              ],
            ),
          ),
        ),
        elevation: 0,
        title: const Text('Sunimo Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Logik zum Teilen des Posts
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Logik zum Favorisieren des Posts
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          // Bildbereich
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
              galleryItem.imagePath,
              width:
                  double.infinity, // Bild nimmt die volle Breite der Karte ein
              fit: BoxFit.contain, // Bild füllt den Bereich aus
              alignment: Alignment.topCenter,
            
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 40,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            )),
          
          // Textbereich (weißgrau)
          Container(
            color: Colors.grey[50], // Weißgrauer Hintergrund
            padding: const EdgeInsets.all(23.0), // Innenabstand für den Text
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  galleryItem.title,
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
                  galleryItem.date.toString(),
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                ),
                const SizedBox(height: 4.0), // Kleiner Abstand
                Text(
                  galleryItem.description,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
      );







  }
} 

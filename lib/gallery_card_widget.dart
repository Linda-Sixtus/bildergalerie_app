import 'package:flutter/material.dart';
import 'gallery_item.dart';
import 'postview.dart';

class GalleryCardWidget extends StatelessWidget {
  final GalleryItem galleryItem;

  const GalleryCardWidget({super.key, required this.galleryItem});
  final String defaultImagePath = 'assets/default_image.jpg';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostViewPage(galleryItem: galleryItem),
        ),
      ),
      child: Card(
        elevation: 8.0, // Schatten für die Karte
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ), // Abgerundete Ecken der Karte
        ),
        clipBehavior: Clip
            .antiAlias, // Stellt sicher, dass der Inhalt innerhalb der abgerundeten Ecken bleibt
        child: 
        
        Container(
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 220, 187, 239)),
            borderRadius: BorderRadius.circular(16.0) // Abgerundete Ecken
          ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Icon(Icons.heart_broken_outlined, size: 50, color: Colors.grey[400]), // Platzhalter-Icon
            Expanded(
              // Bild nimmt den verfügbaren Platz ein
              child: Image.asset(
                galleryItem.imagePath,
                width: double
                    .infinity, // Bild nimmt die volle Breite der Karte ein
                fit: BoxFit.contain, // Bild füllt den Bereich aus
                height: 150.0, // Feste Höhe für das Bild

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
              ),
            ),
            // Textbereich (weißgrau)
            Container(
              color: Colors.grey[50], // Weißgrauer Hintergrund
              padding: const EdgeInsets.all(12.0), // Innenabstand für den Text
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    galleryItem.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                    maxLines: 1,
                    overflow:
                        TextOverflow.ellipsis, // Text abschneiden, wenn zu lang
                  ),
                  const SizedBox(height: 4.0), // Kleiner Abstand
                  Text(
                    galleryItem.description,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                    maxLines: 2, // Beschränkung auf 2 Zeilen
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

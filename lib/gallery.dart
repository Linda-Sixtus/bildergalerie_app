import 'package:bildergalerie_app/gallery_item.dart';
import 'package:flutter/material.dart';
import 'gallery_card_widget.dart';

class GalleryPage extends StatelessWidget {

  GalleryPage({super.key});

  final List<GalleryItem> galleryItems = [
    GalleryItem(title: 'Mila Superstar', description: 'Eine wunderschöne Pflanze, die Ihr Zuhause belebt und frische Luft spendet.', imageName: 'mila.jpg'),
    GalleryItem(title: 'Neon Genesis Evangelion', description: 'dfgs dfghsdfg dsfgsdfg sdfgsdfg sdfgsdfg sdfgsdfg sdfgsdfg sfdgsdfg sfdgsdfg sdfgsdfg sfdgsdf dsfgdsfg sdfg dfg Diese seltene Blüte bringt Farbe und Eleganz in jeden Raum.', imageName: 'neon.jpg'),
    GalleryItem(title: 'Whisper of the Heart', description: 'Ideal für Schreibtische oder kleine Ecken, schafft eine entspannende Atmosphäre.', imageName: 'whisperoftheheart.jpg'),
    GalleryItem(title: 'Oh my goddes', description: 'Pflegeleicht und perfekt für sonnige Standorte, ein echter Hingucker.', imageName: 'ohmy.jpg'),
    GalleryItem(title: 'Sailor Moon', description: 'Verleiht jedem Raum eine natürliche und beruhigende Note.', imageName: 'sailor.jpg'),
    GalleryItem(title: 'Ranma 1/2', description: 'Ideal für Anfänger, da sie sehr widerstandsfähig und anpassungsfähig ist.', imageName: 'ranma.jpg'),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Spalten
            crossAxisSpacing: 10.0, // Horizontaler Abstand zwischen den Karten
            mainAxisSpacing: 10.0, // Vertikaler Abstand zwischen den Karten
            childAspectRatio: 0.75, // Seitenverhältnis der Karten (Breite / Höhe)
          ),
          itemCount: galleryItems.length,
          itemBuilder: (context, index) {
            return GalleryCardWidget(
              galleryItem: galleryItems[index],
            );
          },
        ),
      );
  }

 

}



import 'package:bildergalerie_app/gallery_item.dart';
import 'package:flutter/material.dart';
import 'gallery_card_widget.dart';

class GalleryPage extends StatelessWidget {

  GalleryPage({super.key});

  final List<GalleryItem> galleryItems = [
    GalleryItem(title: 'Ben', description: 'Das ist Ben. Er ist sehr ruhig und gefestigt in seinem Charakter, und liebt es in die Zukunft zu sehen.', imageName: 'SUNIMO_MOTHER_Ben.png'),
    GalleryItem(title: 'Billy', description: 'Das ist Billy. Billy ist sehr verspielt, nimmt Regeln nicht allzu ernst, aber hat immer ein gutes Herz.', imageName: 'SUNIMO_MOTHER_Billy.png'),
    GalleryItem(title: 'Cindy', description: 'Das ist Cindy. Cindy liebt buntes, ist öfter Eitel, und isst für ihr Leben gern Süßigkeiten.', imageName: 'SUNIMO_MOTHER_Cindy.png'),
    GalleryItem(title: 'Filly', description: 'Das ist Filly. Filly ist immer glücklich und lässt sich nicht so schnell die Laune verderben. Ein echter Kumpeltyp.', imageName: 'SUNIMO_MOTHER_Filly.png'),
    GalleryItem(title: 'Iduna', description: 'Das ist Iduna. Sie ist sehr sensibel und vergesslich, und freut sich über Zuneigung, Unterstützung und einen Spielkameraden.', imageName: 'SUNIMO_MOTHER_Iduna.png'),
    GalleryItem(title: 'Fin', description: 'Das ist Fin. Fin ist nur am Essen. Passe auf, dass er sich an die Regeln hält. Er ist sehr eigensinnig, jedoch liebenswert.', imageName: 'SUNIMO_MOTHER_Fin.png'),
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



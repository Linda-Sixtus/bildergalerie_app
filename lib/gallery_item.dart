class GalleryItem
{
  String title = "";
  String description = "";
  String? imageName = "";
  DateTime? date = DateTime.now();

  GalleryItem({
    required this.title,
    required this.description,
    this.imageName,
    this.date,
  }) {
    date = date ?? DateTime.now();
  }

  String get imagePath {
    if (imageName != null && imageName!.isNotEmpty) {
      return "assets/$imageName";
    }
    return "assets/default_image.jpg"; // Fallback-Bild
  }
}
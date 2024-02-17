
class DoorDashCategory{

  final String categoryImage;
  final String categoryTitle;

  const DoorDashCategory({required this.categoryImage, required this.categoryTitle});
}

class SavedStores{

  final String storeImagePath;
  final String storeName;
  final bool isFavorite;
  final double storeRating;
  final int storePoints;
  final double storeDistance;
  final int storeTime;

  const SavedStores({required this.storeImagePath, required this.storeName, required this.storeDistance, required this.storePoints, required this.isFavorite, required this.storeRating, required this.storeTime});
}
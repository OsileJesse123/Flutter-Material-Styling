import 'package:flutter_material_styling/model/model.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';

class DashRepository{

  List<DoorDashCategory> getDoorDashCategories1(){
    return [
      DoorDashCategory(categoryImage: dashMartIcon, categoryTitle: 'DashMart'.hardcoded),
      DoorDashCategory(categoryImage: convenienceIcon, categoryTitle: 'Convenience'.hardcoded),
      DoorDashCategory(categoryImage: localChefsIcon, categoryTitle: 'Local Chefs'.hardcoded),
      DoorDashCategory(categoryImage: holidayDeals, categoryTitle: 'Holiday Deals'.hardcoded),
      DoorDashCategory(categoryImage: groceryDealsIcon, categoryTitle: 'Grocery'.hardcoded),
    ];
  }

  List<DoorDashCategory> getDoorDashCategories2(){
    return [
      DoorDashCategory(categoryImage: acclaimedIcon, categoryTitle: 'Acclaimed'.hardcoded),
      DoorDashCategory(categoryImage: mexicanIcon, categoryTitle: 'Mexican'.hardcoded),
      DoorDashCategory(categoryImage: breakfastIcon, categoryTitle: 'Breakfast'.hardcoded),
      DoorDashCategory(categoryImage: fastFoodIcon, categoryTitle: 'Fast Food'.hardcoded),
      DoorDashCategory(categoryImage: pizzaIcon, categoryTitle: 'Pizza'.hardcoded),
      DoorDashCategory(categoryImage: soup, categoryTitle: 'Soup'.hardcoded),
    ];
  }

  List<SavedStores> getSavedStores(){
    return [
      const SavedStores(
        storeImagePath: chucksDonutImage, 
        storeName: 'Chuck\'s Donut Inc', 
        storeDistance: 2.2, 
        storePoints: 9800, 
        isFavorite: true, 
        storeRating: 4.8, 
        storeTime: 22,
      ),
      const SavedStores(
        storeImagePath: dennysImage, 
        storeName: 'Denny\'s', 
        storeDistance: 3.2, 
        storePoints: 6800, 
        isFavorite: true, 
        storeRating: 4.3, 
        storeTime: 32,
      ),
      const SavedStores(
        storeImagePath: bominosImage, 
        storeName: 'Bominos', 
        storeDistance: 2.2, 
        storePoints: 9800, 
        isFavorite: false, 
        storeRating: 4.8, 
        storeTime: 22,
      ),
      const SavedStores(
        storeImagePath: chucksDonutImage, 
        storeName: 'Chuck\'s Donut Inc', 
        storeDistance: 2.2, 
        storePoints: 9800, 
        isFavorite: true, 
        storeRating: 4.3, 
        storeTime: 22,
      ),
    ];
  }
}
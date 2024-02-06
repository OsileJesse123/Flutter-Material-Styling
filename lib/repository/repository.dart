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
}
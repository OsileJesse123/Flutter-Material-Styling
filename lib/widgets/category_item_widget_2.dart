import 'package:flutter/material.dart';
import 'package:flutter_material_styling/model/model.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItemWidget2 extends StatelessWidget {
  const CategoryItemWidget2({super.key, required this.doorDashCategory});

  final DoorDashCategory doorDashCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(doorDashCategory.categoryImage, width: 40, height: 40,),
        gapH8,
        Text(
          doorDashCategory.categoryTitle,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
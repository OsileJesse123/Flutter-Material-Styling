import 'package:flutter/material.dart';
import 'package:flutter_material_styling/model/model.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.doorDashCategory});

  final DoorDashCategory doorDashCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          constraints: BoxConstraints.tight(const Size.fromRadius(30)),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kStylingGrey100,
            ),
          child:  SvgPicture.asset(doorDashCategory.categoryImage),
            ),
        gapH8,
        Text(
          doorDashCategory.categoryTitle,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
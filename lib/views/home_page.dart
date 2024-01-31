import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16,),
      child: Column(
        children: [
          gapH16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints.expand(width: 300, height: 43),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Customize the shadow color
                      spreadRadius: 1,
                      blurRadius: 12,
                      offset: const Offset(0, 1), // Changes the position of the shadow
                    ),
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: const Text('Search DoorDash'),
                    filled: true,
                    fillColor: theme.colorScheme.background,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32),),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints.tight(Size.fromRadius(20)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.background,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Customize the shadow color
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // Changes the position of the shadow
                    ),
                  ]
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: const Center(
                    child: Icon(Icons.map_outlined,),),),
              )
            ],
          ),
          gapH16,


        ],
      ),
    );
  }
}
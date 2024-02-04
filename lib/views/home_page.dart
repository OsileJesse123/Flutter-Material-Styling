import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';

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
              Material(
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(32),),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    cursorColor: theme.colorScheme.onBackground,
                    cursorHeight: 18,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search DoorDash'.hardcoded,
                      hintStyle: theme.textTheme.bodySmall?.copyWith(fontSize: 14),
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(0, 5, 12, 5),
                      fillColor: theme.colorScheme.background,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32),),
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints.tight(Size.fromRadius(23)),
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
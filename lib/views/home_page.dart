import 'package:flutter/material.dart';
import 'package:flutter_material_styling/repository/repository.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_material_styling/widgets/category_item_widget.dart';
import 'package:flutter_material_styling/widgets/category_item_widget_2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ratings = <String>["Ratings", "Rating 2", "Rating 3", "Rating 4",];
  String? dropdownValue;
  final categoryItems = DashRepository().getDoorDashCategories1();
  final categoryItems2 = DashRepository().getDoorDashCategories2();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    

    return Column(
      children: [
        gapH16,
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 2.5,
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
                gapH20,
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) {
                      return CategoryItemWidget(doorDashCategory: categoryItems[index]);
                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
                  ),
                ),
              ],
            ),
          ),
        ), 
        Expanded(
          flex: 3,
          child: Column(
            children: [
              gapH4,
              Divider(color: theme.dividerColor, thickness: 2,),
              gapH8,
              SizedBox(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) => CategoryItemWidget2(doorDashCategory: categoryItems2[index]),
                   separatorBuilder: (context, index) => const SizedBox(width: 20,), 
                   itemCount: categoryItems2.length),
              ),
              Row(
                children: [
                  Chip(
                    label: Text('DashPass'.hardcoded),
                    avatar: SvgPicture.asset(
                          doorDashLogo,
                          colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn,),
                        ),
                    backgroundColor: theme.colorScheme.background,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
                  ),
                  gapW8,
                  Chip(
                    label: Text('Pickup'.hardcoded,),
                    backgroundColor: theme.colorScheme.background,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
                  ),
                  gapW8,
                  Chip(
                    avatar: SvgPicture.asset(
                          offersIcon,
                          colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn,),
                        ),
                    label: Text('Offers'.hardcoded,),
                    backgroundColor: theme.colorScheme.background,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
                  ),
                  gapW8,
                  Chip(
                    label:  Container(
                      height: 20,
                      child: DropdownButton<String>(
                        value: dropdownValue ?? "Ratings",
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: theme.colorScheme.onSurface,
                        ),
                        underline: Container(height: 0,),
                        items: ratings.map((e) => DropdownMenuItem<String>(value: e,child: Text(e))).toList(),
                        onChanged: (value){
                          dropdownValue = value!;
                          setState(() {});
                        },
                      ),
                    ),
                    avatar: SvgPicture.asset(
                          ratingsIcon,
                          colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn,),
                        ),
                    backgroundColor: theme.colorScheme.background,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
                  ),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}
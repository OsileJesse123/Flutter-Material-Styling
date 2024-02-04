import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_material_styling/views/home_page.dart';
import 'package:flutter_material_styling/views/unimplemented_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final locations = <String>["1226 University Dr", "1224 University Dr", "1222 University Dr"];
  String? dropdownValue;
  int _selectedIndex = 0;

  Widget _page(){
    switch(_selectedIndex){
      case 0:
        return const HomePage();
      case 1:
        return const UnimplementedPage();
      case 2:
        return const UnimplementedPage();
      case 3:
        return const UnimplementedPage();
      case 4:
        return const UnimplementedPage();
      default:
        return const UnimplementedPage();
    }
  }

  Color _determineIconColor(int selectedIndex, ThemeData theme){
    return _selectedIndex == selectedIndex ? theme.bottomNavigationBarTheme.selectedItemColor ?? kStylingRed800 : theme.bottomNavigationBarTheme.unselectedItemColor ?? kStylingGrey800;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 220,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.location_on_rounded,
              ),
              gapW8,
              Expanded(
                child: SizedBox(
                  width: 500,
                  child: DropdownButton<String>(
                    value: dropdownValue ?? "1226 University Dr",
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: theme.colorScheme.onSurface,
                    ),
                    underline: Container(height: 0,),
                    items: locations.map((e) => DropdownMenuItem<String>(value: e,child: Text(e))).toList(),
                     onChanged: (value){
                      dropdownValue = value!;
                      setState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        actionsIconTheme: IconThemeData(color: theme.colorScheme.onSurface),
        actions: [
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.account_circle_outlined,),),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.notifications_outlined,),),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.shopping_cart_outlined,),),
        ],
      ),
      body: _page(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              doorDashLogo,
              colorFilter: ColorFilter.mode(_determineIconColor(0, theme), BlendMode.srcATop),
              ),
            label: 'Home'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              groceryIcon,
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(_determineIconColor(1, theme), BlendMode.srcATop),
            ),
            label: 'Grocery'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.shopping_bag_outlined
            ),
            label: 'Retail'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.search
            ),
            label: 'Browse'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ordersIcon,
              colorFilter: ColorFilter.mode(_determineIconColor(4, theme), BlendMode.srcATop),
            ),
            label: 'Orders'.hardcoded
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (value){
          _selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}


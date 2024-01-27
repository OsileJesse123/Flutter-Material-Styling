import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final locations = <String>["dkkal", "kdajfa", "djkfajfa"];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = locations.first;

    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Icon(
              Icons.location_on,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              items: locations.map((e) => DropdownMenuItem<String>(value: e,child: Text(e))).toList(),
               onChanged: (value){
                dropdownValue = value!;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}


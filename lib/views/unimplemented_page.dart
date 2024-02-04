import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/extensions.dart';

class UnimplementedPage extends StatelessWidget {
  const UnimplementedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page has not been implemented".hardcoded,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displaySmall,
        ),
    );
  }
}
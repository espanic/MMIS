import 'package:flutter/material.dart';

class MealImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Image.asset(
          "assets/images/다운로드 (${index + 1}).jpg",
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmis/components/%EB%A9%94%EB%89%B4.dart';
import 'package:mmis/components/banner.dart';
import 'package:mmis/components/meal_image.dart';
import 'package:mmis/components/our_pride.dart';
import 'package:mmis/components/selection.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Menu("7월 29일(목) 석식"),
                  SizedBox(width: 5),
                  Menu("7월 30일(금) 조식"),
                  SizedBox(width: 5),
                  Menu("7월 31일(토) 중식"),
                  SizedBox(width: 5),
                  Menu("8월 1일(일) 석식"),
                  SizedBox(width: 5),
                  Menu("8월 2일(월) 조식"),
                ],
              ),
            ),
            SizedBox(height: 40),
            Select(),
            SizedBox(height: 50),
            MiddleBanner(),
            SizedBox(height: 40),
            OurPride(),
            Expanded(child: MealImages()),
          ],
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text("M M I S"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "제8전투비행단",
                style: TextStyle(fontSize: 20),
              ),
              Text("병장 최윤호 님")
            ],
          ),
        ),
      ],
    );
  }
}

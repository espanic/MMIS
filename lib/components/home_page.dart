import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmis/components/%EB%A9%94%EB%89%B4.dart';
import 'package:mmis/components/selection.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: customAppBar(),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Menu("7월 29일 석식"),
                SizedBox(width: 5),
                Menu("7월 30일 조식"),
                SizedBox(width: 5),
                Menu("7월 31일 중식"),
                SizedBox(width: 5),
                Menu("8월 1일 석식"),
                SizedBox(width: 5),
                Menu("8월 2일 조식"),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Select(),
          ),
        ],
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text("MMIS"),
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

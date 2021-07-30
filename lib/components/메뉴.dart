import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String date;
  Menu(this.date);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 130,
        height: 170,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(" ${this.date} "),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Text("찰보리밥"),
            Spacer(),
            Text("쇠고기미역국"),
            Spacer(),
            Text("비엔나소세지볶음"),
            Spacer(),
            Text("맛김"),
            Spacer(),
            Text("우유"),
          ],
        ),
      ),
    );
  }
}

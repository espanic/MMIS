import 'package:flutter/material.dart';

class OurPride extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 3.0,
            color: Colors.orange,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.whatshot,
            color: Colors.orange,
          ),
          SizedBox(width: 10),
          Text(
            "우리 부대 급식 자랑",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SelectBox extends StatelessWidget {
  final String select;
  final Icon icon;
  SelectBox({required this.select, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.orange),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          this.icon,
          Text(
            "${this.select}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

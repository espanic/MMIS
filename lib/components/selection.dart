import 'package:flutter/material.dart';
import 'package:mmis/components/selectbox.dart';

class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Spacer(),
          SelectBox(
            select: "불취식신청",
            icon: Icon(
              Icons.no_food_rounded,
              color: Colors.orange,
            ),
          ),
          Spacer(),
          SelectBox(
            select: "공제내역",
            icon: Icon(
              Icons.account_balance_wallet_rounded,
              color: Colors.orange,
            ),
          ),
          Spacer(),
          SelectBox(
            select: "건의사항",
            icon: Icon(
              Icons.report,
              color: Colors.orange,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

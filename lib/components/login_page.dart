import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(height: 100),
            buildCenter(),
            buildCenter2(),
            SizedBox(height: 70),
            customTextFormField("군번을 입력하세요."),
            SizedBox(height: 20),
            customTextFormField("비밀번호를 입력하세요."),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  child: Text("로그인"),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {},
                  child: Text("회원가입"),
                )
              ],
            ),
            SizedBox(height: 100),
            Icon(
              Icons.food_bank,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField customTextFormField(String word) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "$word",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }

  Center buildCenter() {
    return Center(
      child: Text(
        "군급식정보체계",
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ),
      ),
    );
  }
}

Center buildCenter2() {
  return Center(
    child: Text(
      "M M I S",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

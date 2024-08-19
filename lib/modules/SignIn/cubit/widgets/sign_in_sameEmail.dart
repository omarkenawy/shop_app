import 'package:flutter/material.dart';
import 'package:shop_app/Utils/constans.dart';

class SignInSameEmail extends StatelessWidget {
  const SignInSameEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, color: Constans.termsColor)),
        height: 87,
        width: 295,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: CircleAvatar(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Joesph 65",
                  style: TextStyle(fontFamily: Constans.mainFont),
                ),
                Text(
                  "Joseph@sample.com",
                  style: TextStyle(color: Constans.termsColor),
                )
              ],
            )
          ],
        ));
  }
}

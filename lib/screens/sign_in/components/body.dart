import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/components/sign_in_text.dart';
import 'package:ready_shout/constants.dart';
import 'sign_form.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 68),
                arrowicon(),
                SizedBox(height: 31),
                Text(
                  "Enter your email address \nand password to get access to \nyour account",
                  textAlign: TextAlign.left,
                  style: TextStyle(

                    fontSize: 21,
                    fontFamily: 'AirbnbCereal',
                    fontWeight: FontWeight.w500,
                    color: ktColor,
                  ),
                ),

                SizedBox(height: 30),
                SignForm(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(height: 25),
                NoAccountText(),
              ],
            ),
  ],
    ),
        ),
      ),
    ),);
  }
}
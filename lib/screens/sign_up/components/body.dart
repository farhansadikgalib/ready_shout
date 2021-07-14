import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/sign_up/components/sign_up_form.dart';
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
                SizedBox(height: 40),
                arrowicon(),
                SizedBox(height: 25),
                Text(
                  "Create account by providing \nfollowing information",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'AirbnbCereal',
                    fontWeight: FontWeight.w500,
                    color: ktColor,
                  ),
                ),

                SizedBox(height: 15.2),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),);
  }
}
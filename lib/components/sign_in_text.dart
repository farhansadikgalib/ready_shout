import 'package:flutter/material.dart';
import 'package:ready_shout/screens/sign_up/sign_up_screen.dart';
import '../constants.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontFamily: 'AirbnbCereal',
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: kColor,
          ),
        ),

        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style:  TextStyle(
               fontFamily: 'AirbnbCereal',
               fontSize: 13,
               fontWeight: FontWeight.bold,
               color: kColor,
    ),
          ),
        ),
      ],
    );
  }
}
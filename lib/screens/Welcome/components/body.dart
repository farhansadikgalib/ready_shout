import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/screens/sign_in/sign_in_screen.dart';
import 'package:ready_shout/screens/sign_up/sign_up_screen.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 142.85),
              Text(
                "Take control of your \n     online narrative ",
                style: TextStyle(
                  fontFamily: 'AirbnbCereal',
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: ktColor,
                ),
              ),
              SizedBox(height: 70.15),
              Center(
                child: Image.asset(
                    "images/welcome.png",
                    width: 350,
                   height: 300,
                  ),
                ),

              SizedBox(height: 44.95),
              RoundedButton(
                text: "Sign in",
                color: kPrimaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return  SignInScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 17.85),
              RoundedButton(
                text: "Sign up",
                color: kSecondaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          height: 380,
          width: 375,
        ),
        Spacer(flex: 2),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'AirbnbCereal',
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Color(0xFF2A2158),
          ),
        ),


      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/send_request/compnents/send_request_form.dart';

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
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    arrowicon(),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Text(
                        "Testimonials",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'AirbnbCereal',
                          fontWeight: FontWeight.w500,
                          color: ktColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "Send your testimonial request",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'AirbnbCereal',
                      fontWeight: FontWeight.w500,
                      color: ktColor,
                    ),
                  ),
                ),
                SizedBox(height: 15.2),
                Sendrequest(),
              ],
            ),
          ),
        ),
      ),);
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/AddCustomer/customer_added.dart';
import 'package:ready_shout/screens/Customers/customers_screen.dart';
import 'package:ready_shout/screens/sign_up/sign_up_screen.dart';
import 'package:ready_shout/screens/sign_with_google/sign_with_google_screen.dart';


class DownScreen extends StatelessWidget {
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
                SizedBox(height: 100.0),
                Center(
                  child: Container(
                    width: 314.81,
                    height: 356.59,
                    decoration: BoxDecoration(
                      color: kContColor,
                      borderRadius: BorderRadius.all( Radius.circular(20.0)),
                    ),
                    child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 18, 15, 0.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "Your video testimonial request \n     has been sent successfully",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'AirbnbCereal',
                                        fontWeight: FontWeight.w500,
                                        color: ktColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40.0),
                                  Image(image: AssetImage('images/down.png'),
                                    height: 124,
                                    width: 224,
                                  ),
                                  SizedBox(height: 52),
                                  Center(
                                    child: RoundedButton(
                                      text: "OK",
                                      color: kPrimaryColor,
                                      press: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return CustomerScreen();
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

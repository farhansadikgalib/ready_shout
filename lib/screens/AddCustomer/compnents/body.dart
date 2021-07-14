import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/AddCustomer/compnents/customer_added_form.dart';
class BodyAdded extends StatelessWidget {
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
                        "Add Customer",
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
                SizedBox(height: 40),
                Text(
                  "Add new customer to your \ncustomers list",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'AirbnbCereal',
                    fontWeight: FontWeight.w500,
                    color: ktColor,
                  ),
                ),
                SizedBox(height: 15.2),
                Customeradded(),
              ],
            ),
          ),
        ),
      ),);
  }
}
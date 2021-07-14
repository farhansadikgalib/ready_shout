import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/setting/components/Settingform.dart';

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
                Row(
                  children: [
                    arrowicon(),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Text(
                        "Setting",
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
                Row(
                  children: [
                    Text(
                      "Profile settings",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'AirbnbCereal',
                        fontWeight: FontWeight.w500,
                        color: ktColor,
                      ),
                    ),

                    new SizedBox(
                        height: 18.0,
                        width: 18.0,
                        child: new IconButton(
                          padding: new EdgeInsets.only(left: 190.0),
                          color: ktColor,
                          icon: new Icon(Icons.keyboard_arrow_down_outlined, size: 30.0),
                        )
                    )
                  ],
                ),

                SizedBox(height: 15.2),
                Settingform(),


              ],
            ),
          ),
        ),
      ),);
  }
}
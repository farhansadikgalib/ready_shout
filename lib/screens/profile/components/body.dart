import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/profile/components/profileform.dart';


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
                SizedBox(height: 20),
                Row(
                  children: [
                    arrowicon(),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
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
                SizedBox(height: 15),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "images/girl.png",
                                ))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: ktColor,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 12),
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
                Profileform(),
              ],
            ),
          ),
        ),
      ),);
  }
}
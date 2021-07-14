import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/Archive/archive_screen.dart';
import 'package:ready_shout/screens/Archive/components/container.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
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
                      "Archive",
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

              SizedBox(height: 40.0),
              ArchiveContainer(),
              SizedBox(height: 10),
              ArchiveContainer(),
              SizedBox(height: 10),
              ArchiveContainer(),
              SizedBox(height: 10),
              ArchiveContainer(),
              SizedBox(height: 10),

        ],
    ),
    ),
      ),
    );
  }

}



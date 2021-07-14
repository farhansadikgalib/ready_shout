import 'package:flutter/material.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/components/recticon.dart';

class CropChangger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Container(
        child: Row(
          children: [
            InkWell(
              onTap: (){
                ///////Add functionality
              },
              child: Column(
                children: [
               RectIcon(svgIcon: "icons/rect1.svg"),
                ],
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: (){
                /////////
              },
              child: Column(
                children: [
                  RectIcon (svgIcon: "icons/rect2.svg"),
                ],
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                ///////
              },
              child: Column(
                children: [
                  RectIcon(svgIcon: "icons/rect3.svg"),
                ],
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: (){
                ///////
              },
              child: Column(
                children: [
                  RectIcon(svgIcon: "icons/rect4.svg"),
                ],
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: (){
                /////////
              },
              child: Column(
                children: [
                  RectIcon(svgIcon: "icons/rect5.svg"),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

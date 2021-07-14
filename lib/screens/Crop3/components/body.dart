import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/components/changingbar.dart';
import 'package:ready_shout/screens/Crop2/components/Crop_changer.dart';
import 'package:ready_shout/screens/Crop3/components/CutCont.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'Other.dart';
import 'VideoBox.dart';

class FullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            VideoBox(),
            SizedBox(height: getProportionateScreenWidth(15)),
            Other(),
            SizedBox(height: getProportionateScreenWidth(12)),
            CutCont(),
            SizedBox(height: getProportionateScreenWidth(25)),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,right: 10),
                    child: Container(

                       decoration: BoxDecoration(
                         color: Color(0xFFAFB4C6),
                           borderRadius: BorderRadius.all(Radius.circular(8),),
                       ),
                        height: 46,
                        width: 59,
                        child: Center(
                          child: SvgPicture.asset(
                           "icons/cropcross.svg",
                          height:15,
                          width: 15,),
                        ),
                            ),
                  ),
                  Changingbar(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 7),
                    child: Container(

                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8),),
                        ),
                        height: 46,
                        width: 59,
                        child: Center(
                          child: SvgPicture.asset(
                            "icons/tixk.svg",
                            height:15,
                            width: 15,),
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/components/product_card.dart';
import 'package:ready_shout/screens/home/components/section_title.dart';

import '../../../size_config.dart';



class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 145.0, top: 0),
      child: Row(
        children: [
          InkWell(onTap: () {
            //////
    }, child: CustomSurffixIcon(svgIcon: 'icons/backplay.svg')),
          InkWell(
              onTap: (){
                //////
              },
              child: CustomSurffixIcon(svgIcon: 'icons/play.svg')),
          InkWell(
              onTap: (){
                /////
              },
              child: CustomSurffixIcon(svgIcon: 'icons/forwardplay.svg')),
        ],
      ),
    );
  }
}

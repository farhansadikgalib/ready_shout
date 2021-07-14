import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SocialIcons extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        SizedBox(height: 14),
              Text(
                  "Select platforms to upload \n       your testimonial to",
                  textAlign: TextAlign.left,
                style: TextStyle(
                   fontSize: 19,
                   fontFamily: 'AirbnbCereal',
                   fontWeight: FontWeight.w500,
                   color: ktColor,
                  ),
               ),
              SizedBox(height: 6),
               Padding(
                 padding: const EdgeInsets.only(left: 52.0,top: 32),
                    child: Column(
                    children: [
                       Row(
                      children: [
                        InkWell(
                        onTap: () {
                           //backend
                         },
            child: Container(
            child: SvgPicture.asset("icons/Facebook_white.svg"),
                ),
                ),
           SizedBox(width: 20),
           InkWell(
              onTap: () {
                 //backend
                 },
             child: Container(
                  child: SvgPicture.asset("icons/Instagram_white.svg"),
                  ),
                ),
          SizedBox(width: 20),
          InkWell(
         onTap: () {
          //backend
            },
           child: Container(
          child: SvgPicture.asset("icons/Twitter_white.svg"),
          ),
            ),
          SizedBox(width: 20),
             InkWell(
            onTap: () {
              //backend
            },
               child: Container(
           child: SvgPicture.asset("icons/LinkedIN_white.svg"),
            ),
               ),
            SizedBox(width: 20),
            InkWell(
            onTap: () {
              //backend
             },
           child: Container(
              child: SvgPicture.asset("icons/Youtube_white.svg"),
                 ),
               ),
               ],
            ),
         SizedBox(height: 20),
               Row(
                 children: [
                  InkWell(
                  onTap: () {
                    //backend
               },
           child: Container(
                child: SvgPicture.asset("icons/Reddit_white.svg"),
              ),
            ),
         SizedBox(width: 20),
             InkWell(
             onTap: () {
                //backend
               },
           child: Container(
             child: SvgPicture.asset("icons/Pinterest_white.svg"),
            ),
             ),
           SizedBox(width: 20),
           InkWell(
            onTap: () {
              //backend
           },
         child: Container(
                child: SvgPicture.asset("icons/Tik Tok_white.svg"),
             ),
              ),
            SizedBox(width: 20),
            InkWell(
             onTap: () {
                  //backend
               },
           child: Container(
                child: SvgPicture.asset("icons/Dropbox_white.svg"),
               ),
           ),
         SizedBox(width: 20),
                   InkWell(
                     onTap: () {
                       //backend
                     },
                     child: Container(
                       child: SvgPicture.asset("icons/more.svg"),
                     ),
                   ),
            ],
               ),
                 ],
                   ),
               ),
            ],
              );
        }
}

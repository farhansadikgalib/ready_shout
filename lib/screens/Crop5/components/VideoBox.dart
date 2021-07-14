import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';



class VideoBox extends StatelessWidget {
  const VideoBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "images/CropImage.png",
                press: () {},
              ),


              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.2),
        Text(
          "Now it’s ready to share",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 19,
            fontFamily: 'AirbnbCereal',
            fontWeight: FontWeight.w600,
            color: ktColor,
          ),
        ),
        SizedBox(height: 13.2),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: GestureDetector(
            onTap: press,
            child:  Container(
              height: 300,
              width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/CropImage.png",
                      ))),
              child: Center(child: Icon(Icons.play_circle_outline,
                size: 40,
                color:  Colors.white60,),),
            ),
            ),
        ),
      ],
    );
  }
}

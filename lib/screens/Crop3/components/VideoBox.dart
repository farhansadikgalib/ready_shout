import 'package:flutter/material.dart';
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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Container(
              height: 330,
              width: 310,
              child: Image.asset(image,
              fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 00,
              child: Container(
                height: 45,
                width: 340,
                color: Colors.white30,
              ),
            ),
          ],
        ),

        ),

    );
  }
}

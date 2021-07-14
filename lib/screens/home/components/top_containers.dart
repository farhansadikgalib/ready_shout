import 'package:flutter/material.dart';
import 'package:ready_shout/screens/Customers/customers_screen.dart';
import 'package:ready_shout/screens/send_request/compnents/send_request_form.dart';
import 'package:ready_shout/screens/send_request/send_request.dart';
import 'package:ready_shout/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "images/purplebackground.jpg",
                category: "Testimonials",
                addtext: "Additional text",
                press: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SendrequestScreen();
                    },
                  ),
                );},
              ),
              SpecialOfferCard(
                image: "images/sky.jpeg",
                category: "Customer",
                addtext: "Additional text",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CustomerScreen();
                      },
                    ),
                  );

                },
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
    @required this.category,
    @required this.image,
    @required this.addtext,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final String addtext;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 250.69,
          height: 165.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       begin: Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //       colors: [
                //         Color(0xFF343434).withOpacity(0.4),
                //         Color(0xFF343434).withOpacity(0.15),
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(20),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "  $addtext",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 30),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,

                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
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
                      ),
                      Positioned(
                        bottom: 35,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
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
                                    "images/youngman.png",
                                  ))),
                        ),
                      ),

                  ],
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ready_shout/screens/Welcome/welcome_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'splash_content.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to ReadyShout",
      "image": "images/screen1.png",
    },
    {
      "text": "Try one of the most powerful marketing tools",
      "image": "images/screen2.png",
    },
    {
      "text": "Request, upload, edit and post video testimonials from happy customers-all in one location",
      "image": "images/screen3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(

                  image: splashData[index]["image"],
                  text: splashData[index]['text'],

                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(height: 53),
                    SizedBox(
                      width: 285.11,
                      height: 47.91,
                      child: FloatingActionButton(
                        child: Text("Next",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'AirbnbCereal',
                                fontWeight: FontWeight.w500,
                              ),),
                        backgroundColor: kPrimaryColor,
                        onPressed: () {
                             Navigator.push( context,
                             MaterialPageRoute(
                             builder: (context)
                             {
                               return WelcomeScreen();
                             },
                          ),
                             );
                        },

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 15 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/sign_up/sign_up_screen.dart';
import '../sign_with_google_screen.dart';

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
                SizedBox(height: 40),
                arrowicon(),
                SizedBox(height: 25),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Sign in with Google",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'AirbnbCereal',
                          fontWeight: FontWeight.w500,
                          color: ktColor,
                        ),
                      ),
                      SizedBox(height: 13.2),
                      Text(
                        "Choose your Google  account",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'AirbnbCereal',
                          fontWeight: FontWeight.w400,
                          color: kColor,
                        ),
                      ),
                    ],
                  ),

                ),

    SizedBox(height: 40.0),
    Center(
      child: Container(
        width: 314.81,
        height: 356.59,
      decoration: BoxDecoration(
      color: kContColor,
      borderRadius: BorderRadius.all( Radius.circular(20.0)),
      ),
      child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 18, 15, 0.0),
                child: Column(
                  children: [
                    InkWell(
                      hoverColor: kPrimaryColor,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15),
                            ),
                          color: kboxColor,
                        ),

                        width: 284.41,
                        height: 63.88,

                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: CircleAvatar(
                                        radius: 23.0,
                                        backgroundImage: AssetImage('images/youngman.png'),
                                      ),
                                    ),

                                    SizedBox(width: 10.0),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7.0, left: 8),
                                      child: Center(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                              Text(
                                                  'Elton Peters1',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'AirbnbCereal',
                                                    fontWeight: FontWeight.w500,
                                                    color: ktColor,
                                                  )
                                              ),
                                              Text(
                                                  'eltonpeters@gmail.com',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'AirbnbCereal',
                                                    fontWeight: FontWeight.w400,
                                                    color: kColor,
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                    )
                                  ]
                              ),
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      hoverColor: kPrimaryColor,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15),
                            ),
                            color: kboxColor,
                          ),

                          width: 284.41,
                          height: 63.88,
                          child: Center(
                            child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: CircleAvatar(
                                      radius: 23.0,
                                      backgroundImage: AssetImage('images/youngman.png'),
                                    ),
                                  ),

                                  SizedBox(width: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 13.0, left: 8),
                                    child: Center(
                                      child: Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[
                                            Text(
                                                'Elton Peters',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'AirbnbCereal',
                                                  fontWeight: FontWeight.w500,
                                                  color: ktColor,
                                                )
                                            ),
                                            Text(
                                                'eltonpeters@gmail.com',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'AirbnbCereal',
                                                  fontWeight: FontWeight.w400,
                                                  color: kColor,
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 0,
                      width: 200.0,
                      child: Divider(
                        color: Color(0xFF000000),
                      ), ),
                    SizedBox(height: 20),
                    InkWell(
                      hoverColor: kPrimaryColor,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15),
                            ),
                            color: kboxColor,
                          ),

                          width: 284.41,
                          height: 63.88,
                          child: Center(
                            child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: CircleAvatar(
                                      radius: 23.0,
                                      backgroundImage: AssetImage('images/avator.png'),
                                    ),
                                  ),

                                  SizedBox(width: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 13.0, left: 8),
                                    child: Center(
                                      child: Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                    'Add another account',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: 'AirbnbCereal',
                                                      fontWeight: FontWeight.w500,
                                                      color: ktColor,
                                                    )
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "To continue, Google will share your name, email address, and profile picture with ReadyShout. Before using this app, \nreview its",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'AirbnbCereal',
                            fontWeight: FontWeight.w500,
                            color: kColor,),
                          children: <TextSpan>[
                            TextSpan(text: ' Terms of Service',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'AirbnbCereal',
                                  fontWeight: FontWeight.bold,
                                  color: kColor,),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }
                            ),
                            TextSpan(text: ' and ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'AirbnbCereal',
                                  fontWeight: FontWeight.w500,
                                  color: kColor,)
                            ),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(fontSize: 13,
                                  fontFamily: 'AirbnbCereal',
                                  fontWeight: FontWeight.bold,
                                  color: kColor,),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ]),
            ),
    ),
                SizedBox(height: 34),
                Center(
                  child: RoundedButton(
                    text: "Continue with google",
                    color: kPrimaryColor,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignWithGoogleScreen();
                          },
                        ),
                      );
                    },
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
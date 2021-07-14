import 'package:flutter/material.dart';
import 'package:ready_shout/arrowicon.dart';
import 'package:ready_shout/screens/Customers/components/container.dart';

import '../../../constants.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();
  }
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
                Row(
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    arrowicon(),
                  ],
                ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Text(
                        "Customer",
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
                SizedBox(height: 40),
                SizedBox(height: 40.0),
                ContainerWidget(),
                SizedBox(height: 10),
                ContainerWidget(),
                SizedBox(height: 10),
                ContainerWidget(),
                SizedBox(height: 10),
                ContainerWidget(),
                SizedBox(height: 10),
                ContainerWidget(),
        ],
    ),
      ),
    ),
      ),
    );
  }
}


void _bottomSheetMore(context) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return new Container(
        padding: EdgeInsets.only(
          left: 5.0,
          right: 5.0,
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
        ),
        child: new Wrap(
          children: <Widget>[
            new ListTile(
              title: const Text(
                'More',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            new ListTile(
              leading: new Container(
                width: 4.0,
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
              ),
              title: const Text(
                'Favourites',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            new ListTile(
              leading: new Container(
                width: 4.0,
                child: Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),

              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            new ListTile(
              leading: new Container(
                width: 4.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ),

              title: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () async {
                // Add Here
              },
            ),

          ],
        ),
      );
    },
  );
}


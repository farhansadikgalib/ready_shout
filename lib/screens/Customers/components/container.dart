import 'package:flutter/material.dart';
import 'package:ready_shout/screens/AddCustomer/customer_added.dart';
import 'package:ready_shout/screens/Archive/archive_screen.dart';
import 'package:ready_shout/screens/Crop2/Crop_Screen.dart';
import 'package:ready_shout/screens/profile/profilescreen.dart';
import 'package:ready_shout/screens/send_request/compnents/send_request_form.dart';
import 'package:ready_shout/screens/send_request/send_request.dart';

import '../../../constants.dart';

class ContainerWidget extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 344,
          height: 93,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                  children: [
                    SizedBox(width: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0 , top: 5.0),
                      child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(
                                  'Grace',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'AirbnbCereal',
                                    fontWeight: FontWeight.w500,
                                    color: ktColor,
                                  ),
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                  'graceshaw@gmail.com',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'AirbnbCereal',
                                    fontWeight: FontWeight.w400,
                                    color: kColor,
                                  ),
                              ),
                              Text(
                                  '(222) 960-648 23',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'AirbnbCereal',
                                    fontWeight: FontWeight.w400,
                                    color: kColor,
                                  ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: InkWell(
                         onTap: (){
                                _bottomSheetMore(context); },
                        child: Icon(
                          Icons.more_vert_outlined,
                          color: kColor,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          )
      ),
    );
  }
}


void _bottomSheetMore(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(30.0),
            topRight: const Radius.circular(30.0)),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (builder) {
      return new Container(
        height: 230,
        padding: EdgeInsets.only(
          left: 5.0,
          right: 5.0,
          top: 5.0,
          bottom: 5.0,
        ),
        child: new Wrap(
          children: <Widget>[
            InkWell(
              onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) {
      return SendrequestScreen();
      },
      ),
      );
                    },

              child: ListTile(
                title: Center(
                  child: Text(
                      'Send request',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'AirbnbCereal',
                        fontWeight: FontWeight.w500,
                        color: ktColor,
                      ),
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
              width: 373.62,
              child: Divider(
                color: ktColor,
              ), ),
            InkWell(
              onTap: () {
                //Add Backend Code
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CustomerAddedScreen();
                    },
                  ),
                );
              },
              child: ListTile(
                title: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AirbnbCereal',
                      fontWeight: FontWeight.w500,
                      color: ktColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
              width: 373.62,
              child: Divider(
                color: ktColor,
              ), ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CropScreen();
                    },
                  ),
                );
              },
              child: ListTile(
                title: Center(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AirbnbCereal',
                      fontWeight: FontWeight.w500,
                      color: ktColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
              width: 373.62,
              child: Divider(
                color: ktColor,
              ), ),

            SizedBox(
              height: 0,
              width: 373.62,
              child: Divider(
                color: ktColor,
              ), ),
            InkWell(
              onTap: () {
                //Add Backend Code
              },
              child: ListTile(
                title: Center(
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AirbnbCereal',
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
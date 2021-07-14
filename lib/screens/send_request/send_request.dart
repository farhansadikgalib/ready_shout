import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/send_request/compnents/body.dart';
import '../../size_config.dart';

class SendrequestScreen extends StatelessWidget {
  static String routeName = "/Sendrequest";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}



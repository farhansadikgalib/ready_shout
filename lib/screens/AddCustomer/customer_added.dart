import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/AddCustomer/compnents/body.dart';
import '../../size_config.dart';


class CustomerAddedScreen extends StatelessWidget {
  static String routeName = "/customeraddedscreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      backgroundColor: Colors.white,
      body: BodyAdded(),
    );
  }
}



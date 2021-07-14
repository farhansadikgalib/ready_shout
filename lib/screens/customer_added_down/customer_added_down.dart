import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/customer_added_down_screen.dart';

class CustomerDown extends StatelessWidget {
  static String routeName = "/down";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      backgroundColor: Colors.white,
      body: CustomerDownScreen(),
    );
  }
}
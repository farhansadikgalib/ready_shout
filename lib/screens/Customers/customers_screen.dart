import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class CustomerScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Body(),
    );
  }
}
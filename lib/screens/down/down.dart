import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/down_screen.dart';

class Down extends StatelessWidget {
  static String routeName = "/down";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(


      backgroundColor: Colors.white,
      body: DownScreen(),
    );
  }
}
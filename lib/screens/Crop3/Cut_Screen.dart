import 'package:flutter/material.dart';
import 'components/body.dart';

class CutScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FullScreen(),
    );
  }
}

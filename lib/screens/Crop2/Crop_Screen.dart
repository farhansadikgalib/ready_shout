import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ready_shout/screens/Crop1/Text_Crop_Screen.dart';
import 'package:ready_shout/screens/Crop3/Cut_Screen.dart';

import '../../constants.dart';
import 'components/body.dart';

class CropScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<CropScreen> createState() => _CropScreenState();
}

class _CropScreenState extends State<CropScreen>with SingleTickerProviderStateMixin
{



  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FullScreen(),
    );
  }
}

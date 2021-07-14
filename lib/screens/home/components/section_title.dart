import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
            TextStyle(
                  fontFamily: 'AirbnbCereal',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: ktColor,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: press,
        child: Row(
          children: [
            Expanded(child: Text(text,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w500,
              color: ktColor,
            ),)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

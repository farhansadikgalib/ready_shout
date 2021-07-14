import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(40),
                vertical: getProportionateScreenWidth(12)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(
              fontFamily: 'AirbnbCereal',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: kColor,
            ),
            prefixIcon: Icon(Icons.search,
            size: 40,
            color: kColor,),
         ),
      ),
    );
  }
}

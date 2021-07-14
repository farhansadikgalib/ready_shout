import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ready_shout/screens/profileBar/profile_screen.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 320.0, top: 5 , left: 10),
              child: Container(
                child: SvgPicture.asset("icons/topbar.svg"),
              ),
            ),
          ),
          SizedBox(height: 20),
          SearchField(),

        ],

    );
  }
}

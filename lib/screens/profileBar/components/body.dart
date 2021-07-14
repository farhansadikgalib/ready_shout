import 'package:flutter/material.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/screens/profile/profilescreen.dart';
import 'package:ready_shout/screens/setting/settingscreen.dart';
import 'profile_menu.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 348.0, top: 80),
              child: CustomSurffixIcon(svgIcon: "icons/cross.svg"),
            ),
          ),
          SizedBox(height: 10),
          ProfileMenu(
            text: "Profile",
            press: () => {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) {
            return ProfilefillScreen();
               },
              ),
               ),
            },
          ),
          ProfileMenu(
            text: "Settings",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingScreen();
                  },
                ),
              );
            },
          ),
          ProfileMenu(
                text: "Help",
                press: () {},
             ),
          ProfileMenu(
                text: "About",
                press: () {},
              ),
          ProfileMenu(
                text: "Log out",
                press: () {},
              ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CutCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 38.0),
        child: Container(
          height: 50,
          width: 350,
          child: Row(
            children: [
            Image.asset("images/CropImage.png",),
              Image.asset("images/CropImage.png"),
              Image.asset("images/CropImage.png"),
              Image.asset("images/CropImage.png"),
              Image.asset("images/CropImage.png"),
              Image.asset("images/CropImage.png"),
              Image.asset("images/CropImage.png"),
            ],
          ),

        ),
      ),
    );
  }
}

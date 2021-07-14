import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';

void main() {
  runApp(arrowicon());
}

class arrowicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios_outlined,
              color: ktColor,
            ),
        ),

      ],
    );
  }
}



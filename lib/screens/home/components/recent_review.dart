import 'package:flutter/material.dart';
import 'package:ready_shout/components/product_card.dart';
import 'package:ready_shout/screens/home/components/section_title.dart';
import '../../../size_config.dart';


class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Recently viewed", press: () {}),
        ),
        ProductCard(),
      ],
    );
  }
}

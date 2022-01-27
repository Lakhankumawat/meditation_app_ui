import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/splash_screen/components/pageCard.dart';

Widget CustomPage(
    {required int index,
    required String image,
    required String headline,
    required String subline}) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              index == 0 ? 'assets/icons/close.svg' : 'assets/icons/back.svg',
            ),
            SvgPicture.asset(
              'assets/icons/heart.svg',
            )
          ],
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(15),
      ),
      Container(
        child: Image.asset(image),
      ),
      SizedBox(
        height: getProportionateScreenHeight(15),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: PageCard(subline: subline, index: index, headline: headline),
      ),
    ],
  );
}

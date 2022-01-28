import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        'Ready to start meditate?',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'SF Pro Display',
            fontSize: 20,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
            height: 1.2),
      ),
      Container(
        width: 50,
        height: 50,
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/icons/user_bg.svg',
              height: 47,
              width: 47,
            ),
            Positioned(
              top: 6,
              left: 5.5,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/user.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

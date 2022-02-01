import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget PlayingDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Breathing Practices',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Text',
                fontSize: 20,
                letterSpacing: -0.4,
                fontWeight: FontWeight.w700,
                height: 1.3),
          ),
          Text(
            'For Relaxation',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(235, 235, 245, 0.6),
                fontFamily: 'SF Pro Text',
                fontSize: 12,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.3),
          ),
        ],
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          'assets/icons/audio-pl.png',
        ),
      ),
    ],
  );
}

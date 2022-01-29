import 'package:flutter/material.dart';

Widget SeeAllWidget({required String heading}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        heading,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'SF Pro Text',
            fontSize: 17,
            letterSpacing: -0.4,
            fontWeight: FontWeight.normal,
            height: 1.3),
      ),
      GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'See all',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(235, 235, 245, 0.6),
                  fontFamily: 'SF Pro Text',
                  fontSize: 17,
                  letterSpacing: -0.4,
                  fontWeight: FontWeight.normal,
                  height: 1.3),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff9796ae),
              size: 25,
            ),
          ],
        ),
      ),
    ],
  );
}

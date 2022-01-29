import 'package:flutter/material.dart';

Widget IconButtons({required String text, required String icon}) {
  return Container(
    width: 129,
    height: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      border: Border.all(
        color: Color.fromRGBO(255, 255, 255, 1),
        width: 2,
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      children: [
        Image.asset(icon),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'SF Pro Text',
              fontSize: 17,
              letterSpacing: -0.4,
              fontWeight: FontWeight.normal,
              height: 1.3),
        ),
      ],
    ),
  );
}

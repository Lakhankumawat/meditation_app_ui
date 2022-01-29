import 'package:flutter/material.dart';

Widget SearchBar() {
  return Container(
    width: 330,
    height: 40,
    decoration: BoxDecoration(
      color: Color(0xffb1b0c3),
      borderRadius: BorderRadius.circular(14),
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_rounded,
            color: Color.fromRGBO(60, 60, 67, 0.6),
          ),
          Text(
            'Search',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(60, 60, 67, 0.6),
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                letterSpacing: -0.4,
                fontWeight: FontWeight.normal,
                height: 1.3),
          ),
        ],
      ),
    ),
  );
}

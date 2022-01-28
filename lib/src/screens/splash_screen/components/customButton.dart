import 'package:flutter/material.dart';

Container CustomButton() {
  return Container(
      width: 260,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              offset: Offset(0, 10),
              blurRadius: 20)
        ],
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.indigo,
              Color(0xFF844FFC),
            ]),
      ),
      child: Center(
        child: Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(242, 242, 247, 1),
              fontFamily: 'SF Pro Text',
              fontSize: 17,
              letterSpacing: -0.4,
              fontWeight: FontWeight.normal,
              height: 1.3),
        ),
      ));
}

import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String text;
  const CardButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 50,
      padding: EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(68, 42, 124, 0.05),
              offset: Offset(10, 10),
              blurRadius: 20)
        ],
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
          colors: [
            Color(0xffFF9CE3),
            Color(0xffE1467C),
          ],
        ),
      ),
      child: Container(
        // width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(0xff2e2d2d),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                letterSpacing: -0.4,
                fontWeight: FontWeight.w700,
                height: 1.3),
          ),
        ),
      ),
    );
  }
}

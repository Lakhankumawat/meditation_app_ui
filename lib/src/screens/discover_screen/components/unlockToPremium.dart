import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';

class UnlockToPremium extends StatelessWidget {
  final String text;
  const UnlockToPremium({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(45),
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
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'SF Pro Text',
              fontSize: 22,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w700,
              height: 1.3),
        ),
      ),
    );
  }
}

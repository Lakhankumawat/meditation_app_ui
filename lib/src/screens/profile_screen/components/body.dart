import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/view/profile_screen_view_model.dart';

class Body extends StatelessWidget {
  final ProfileScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(15),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff6a6886), Color(0xff38355e)]),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Coming Soon...\nStay Tuned...🎵',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'SF Pro Display',
              fontSize: 25,
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
              height: 1.2),
        ),
      ]),
    );
  }
}

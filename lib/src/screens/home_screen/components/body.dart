import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/view/home_screen_view_model.dart';
import 'contentCard.dart';
import 'header.dart';

class Body extends StatelessWidget {
  final HomeScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF3a3760),

        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF6B6887),
              Color(0xFF37355D),
            ]),
        //for card
        //4f4d72 - top left
        //07070a -bottomright
        //     ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          header(),
          SizedBox(
            height: getProportionateScreenHeight(12),
          ),
          ContentCard(
            model: model,
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
        ],
      ),
    );
  }
}

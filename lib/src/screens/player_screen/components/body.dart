import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/discover_screen/components/unlockToPremium.dart';
import 'package:meditation_app/src/screens/player_screen/components/playingDetails.dart';
import 'package:meditation_app/view/player_screen_view_model.dart';

class Body extends StatelessWidget {
  final PlayerScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        vertical: getProportionateScreenHeight(15),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff6a6886), Color(0xff38355e)]),
      ),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/back.svg',
                ),
                SvgPicture.asset(
                  'assets/icons/heart.svg',
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Text(
            'Playing',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Display',
                fontSize: 38,
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
                height: 1.2),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              'assets/images/breather.png',
              fit: BoxFit.contain,
              height: getProportionateScreenHeight(240),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(14),
              ),
              child: PlayingDetails()),
          Slider(
            activeColor: Colors.white,
            inactiveColor: Color(0xff787880),
            thumbColor: Colors.white,
            min: 0,
            max: 3.5,
            value: model.sliderValue,
            onChanged: (value) {
              model.setSliderValue(value);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0:23', //${model.sliderValue.toInt()}
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 245, 0.6),
                      fontFamily: 'SF Pro Text',
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.3),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(
                  '-3:05',
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 245, 0.6),
                      fontFamily: 'SF Pro Text',
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.3),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/prev.png',
                ),
                Image.asset(
                  'assets/icons/pause.png',
                ),
                Image.asset(
                  'assets/icons/next.png',
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          UnlockToPremium(
            text: 'Explore Similar',
          ),
        ],
      ),
    );
  }
}

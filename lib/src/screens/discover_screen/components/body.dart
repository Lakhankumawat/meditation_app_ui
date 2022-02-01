import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/discover_screen/components/iconButtons.dart';
import 'package:meditation_app/src/screens/discover_screen/components/search_bar.dart';
import 'package:meditation_app/src/screens/discover_screen/components/seeAllWidget.dart';
import 'package:meditation_app/src/screens/discover_screen/components/unlockToPremium.dart';
import 'package:meditation_app/src/screens/player_screen/player_screen.dart';
import 'package:meditation_app/view/discover_screen_view_model.dart';
import 'discoverListItems.dart';

class Body extends StatelessWidget {
  final DiscoverScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Discover',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Display',
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
                height: 1.2),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          SearchBar(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SeeAllWidget(heading: 'New Releases'),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: model.listOfItems.length,
                  itemBuilder: (context, index) {
                    return DiscoverListItems(
                      image: 'assets/images/calmr.png',
                      tagline: 'Focus',
                      baseline: 'Focus on  work',
                    );
                  }),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          UnlockToPremium(text: 'Unlock To Premium'),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(PlayerScreen.routeName),
                  child: IconButtons(
                      text: 'Meditation', icon: 'assets/icons/timer.png'),
                ),
                SizedBox(
                  width: 12,
                ),
                IconButtons(text: 'Sleep', icon: 'assets/icons/moon.png'),
                SizedBox(
                  width: 12,
                ),
                IconButtons(text: 'Music', icon: 'assets/icons/music.png'),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButtons(text: 'Yoga', icon: 'assets/icons/play_small.png'),
                SizedBox(
                  width: 12,
                ),
                IconButtons(text: 'Focus', icon: 'assets/icons/focus.png'),
                SizedBox(
                  width: 12,
                ),
                IconButtons(text: 'Breathe', icon: 'assets/icons/nose.png'),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SeeAllWidget(heading: 'Start A Daily Habit'),
        ],
      ),
    );
  }
}

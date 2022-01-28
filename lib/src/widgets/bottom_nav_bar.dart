import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';

Container CustomBottomNavbar() {
  return Container(
    width: 390,
    height: 80,
    decoration: BoxDecoration(
        color: Color(0xFF615f80),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BottomNavbarItem(
                  icon: Icons.home_rounded, text: 'Home', isSelected: true),
              BottomNavbarItem(
                  icon: Icons.search_rounded,
                  text: 'Discover',
                  isSelected: false),
              BottomNavbarItem(
                  icon: Icons.account_circle_rounded,
                  text: 'Profile',
                  isSelected: false),
              BottomNavbarItem(
                  icon: Icons.star_rounded, text: 'Premium', isSelected: false),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(7),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 6,
            width: getProportionateScreenWidth(80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget BottomNavbarItem(
    {required String text, required IconData icon, required bool isSelected}) {
  return Container(
    //
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      boxShadow: isSelected
          ? [
              BoxShadow(
                color: Color(0xff99589f).withOpacity(0.7),
                spreadRadius: 10,
                blurRadius: 15,
                offset: Offset(-1, 7), // changes position of shadow
              ),
            ]
          : [],
    ),
    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          color: isSelected ? Colors.white : Color(0xff9796ae),
          size: 25,
        ),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.white : Color(0xff9796ae),
              fontFamily: 'SF Pro Text',
              fontSize: 11,
              letterSpacing: 0.06,
              fontWeight: FontWeight.normal,
              height: 1.2),
        ),
      ],
    ),
  );
}

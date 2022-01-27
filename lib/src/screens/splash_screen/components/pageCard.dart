import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/splash_screen/components/customButton.dart';

Widget PageCard(
    {required int index, required String headline, required String subline}) {
  return GlassmorphicContainer(
    width: getProportionateScreenWidth(280),
    height: getProportionateScreenHeight(240),
    borderRadius: 30,
    blur: 20,
    alignment: Alignment.bottomCenter,
    border: 2,
    linearGradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFFFFFF).withOpacity(0.3),
          Color(0xFFffffff).withOpacity(0.1),
        ],
        stops: [
          0.1,
          1,
        ]),
    borderGradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF844FFC).withOpacity(0.5),
        Color(0xFF491EB8).withOpacity(0.5),
      ],
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Display',
                fontSize: 38,
                letterSpacing: 0.4,
                fontWeight: FontWeight.w700,
                height: 1.2),
          ),
          SizedBox(height: 16),
          Text(
            subline,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(235, 235, 245, 0.60),
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                letterSpacing: -0.23,
                fontWeight: FontWeight.normal,
                height: 1.3),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          index != 2
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Skip',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(235, 235, 245, 0.6),
                          fontFamily: 'SF Pro Text',
                          fontSize: 18,
                          letterSpacing: -0.4,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    ),
                    Container(
                      width: 85,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              offset: Offset(0, 10),
                              blurRadius: 20)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment(6.123234262925839e-17, 1),
                            end: Alignment(-1, 6.123234262925839e-17),
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.9),
                              Color.fromRGBO(255, 255, 255, 0.6)
                            ]),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'SF Pro Text',
                              fontSize: 17,
                              letterSpacing: -0.4,
                              fontWeight: FontWeight.w700,
                              height: 1.3),
                        ),
                      ),
                    )
                  ],
                )
              : CustomButton(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:
                      index == 0 ? Colors.white : Colors.white.withOpacity(0.2),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:
                      index == 1 ? Colors.white : Colors.white.withOpacity(0.2),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:
                      index == 2 ? Colors.white : Colors.white.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

Container CustomButton() {
  return // Figma Flutter Generator ButtonWidget - INSTANCE
      Container(
          width: 260,
          height: 50,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 260,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ))),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 260,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            offset: Offset(0, 10),
                            blurRadius: 20)
                      ],
                      gradient: LinearGradient(
                          begin: Alignment(
                              -0.32002702355384827, 0.859416663646698),
                          end: Alignment(
                              -0.859416663646698, -0.4418373703956604),
                          colors: [
                            Color.fromRGBO(132, 79, 252, 1),
                            Color.fromRGBO(73, 29, 183, 1)
                          ]),
                    ))),
            Positioned(
                top: 0,
                left: 0,
                child: Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(242, 242, 247, 1),
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      letterSpacing: -0.40799999237060547,
                      fontWeight: FontWeight.normal,
                      height: 1.2941176470588236),
                )),
          ]));
}

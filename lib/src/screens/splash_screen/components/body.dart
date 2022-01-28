import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/view/splash_screen_view_model.dart';

class Body extends StatelessWidget {
  final SplashScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg.png',
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                children: model.list,
                controller: model.controller,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 8,
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

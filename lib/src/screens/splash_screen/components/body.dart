import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/splash_screen/components/pageCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    'assets/icons/close.svg',
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
            Container(
              child: Image.asset('assets/images/Meditation.png'),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            PageCard(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Container(
              height: 8,
              width: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

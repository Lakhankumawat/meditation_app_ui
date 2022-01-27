import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/src/screens/splash_screen/components/page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final PageController _controller = PageController();

  List<Widget> _list = [
    CustomPage(
      subline:
          '100+ guided meditations covering anxiety, focus, stress, gratitude and more.',
      index: 0,
      headline: '30 days\nMeditation\nChallenge',
      image: 'assets/images/Meditation.png',
    ),
    CustomPage(
      subline:
          'Practice your breathing, relax your body, listen the calming sound music make you feel better.',
      index: 1,
      headline: 'Choose\nyour\ntop goal',
      image: 'assets/images/Breathe.png',
    ),
    CustomPage(
      subline:
          '50+ music with the calming sound help you to fall asleep faster. Calm can change your life.',
      index: 2,
      headline: 'Listen the\ncalming music\nhelp you sleep',
      image: 'assets/images/Stone.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => _animateSlider());
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller.initialPage + 1;

      if (nextPage == _list.length) {
        nextPage = 0;
      }

      _controller
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.easeOut)
          .then((_) => _animateSlider());
    });
  }

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
                children: _list,
                controller: _controller,
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

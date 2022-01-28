import 'package:flutter/cupertino.dart';
import 'package:meditation_app/provider/base_model.dart';
import 'package:meditation_app/src/screens/home_screen/home_screen.dart';
import 'package:meditation_app/src/screens/splash_screen/components/page.dart';

class SplashScreenViewModel extends BaseModel {
  final PageController controller = PageController();

  List<Widget> list = [
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

  void animateSlider(int nextPage, BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) {
      if (nextPage == list.length) {
        Navigator.of(context).pushNamed(HomeScreen.routeName);
      }

      controller
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.easeOut)
          .then((_) => animateSlider(nextPage + 1, context));
    });
  }
}

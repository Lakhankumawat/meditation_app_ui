import 'package:flutter/cupertino.dart';
import 'package:meditation_app/provider/base_model.dart';
import 'package:meditation_app/src/screens/home_screen/components/listItem.dart';

class HomeScreenViewModel extends BaseModel {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  final List<ListItem> listItems = [
    ListItem(
      headline: 'Meditations',
      baseline: 'Help to stress less',
      onTap: () {},
      img1: 'assets/images/meditate_v.png',
      img2: 'assets/images/yoga_v.png',
    ),
    ListItem(
      headline: 'Music',
      baseline: 'Help for sleep',
      onTap: () {},
      img1: 'assets/images/breathe_v.png',
      img2: 'assets/images/calm_v.png',
    ),
  ];

  void onTappedBar(int value) {
    selectedIndex = value;
    pageController.animateToPage(selectedIndex,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    notifyListeners();
  }
}

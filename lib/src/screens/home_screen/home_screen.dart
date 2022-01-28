import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/provider/base_view.dart';
import 'package:meditation_app/src/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/view/home_screen_view_model.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView<HomeScreenViewModel>(
        onModelReady: (model) => {},
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Color(0xFF3a3760),
            body: Body(
              model: model,
            ),
            bottomNavigationBar: CustomBottomNavbar(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/provider/base_view.dart';
import 'package:meditation_app/view/splash_screen_view_model.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView<SplashScreenViewModel>(
        onModelReady: (model) => {
              model.animateSlider(1, context),
            },
        builder: (context, model, child) {
          return Scaffold(
            body: Body(
              model: model,
            ),
          );
        });
  }
}

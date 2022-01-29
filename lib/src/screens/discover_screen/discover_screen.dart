import 'package:flutter/material.dart';
import 'package:meditation_app/provider/base_view.dart';
import 'package:meditation_app/src/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/view/discover_screen_view_model.dart';
import 'components/body.dart';

class DiscoverScreen extends StatelessWidget {
  static String routeName = '/discover-screen';
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<DiscoverScreenViewModel>(
        onModelReady: (model) => {},
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Color(0xff6a6886),
            body: Body(
              model: model,
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';
import 'package:meditation_app/view/home_screen_view_model.dart';
import 'cardButton.dart';

class ContentCard extends StatelessWidget {
  final HomeScreenViewModel model;
  const ContentCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 20,
      height: getProportionateScreenHeight(420),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff3e3d3f), Color(0xff020202)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose your goal',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Display',
                fontSize: 17,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
                height: 1.2),
          ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          Row(
            children: [
              Expanded(
                  child: CardButton(
                text: 'Calm',
              )),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
              Expanded(
                  child: CardButton(
                text: 'Mindful',
              )),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          Row(
            children: [
              Expanded(
                  child: CardButton(
                text: 'Anxious',
              )),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
              Expanded(
                  child: CardButton(
                text: 'Health',
              )),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return model.listItems[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

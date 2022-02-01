import 'package:flutter/material.dart';
import 'package:meditation_app/config/size_config.dart';

class DiscoverListItems extends StatelessWidget {
  final String image;
  final String tagline;
  final String baseline;
  const DiscoverListItems({
    Key? key,
    required this.image,
    required this.tagline,
    required this.baseline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: getProportionateScreenHeight(210),
              width: getProportionateScreenWidth(200),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tagline,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'SF Pro Text',
                    fontSize: 20,
                    letterSpacing: -0.4,
                    fontWeight: FontWeight.w700,
                    height: 1.3),
              ),
              Text(
                baseline,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(235, 235, 245, 0.6),
                    fontFamily: 'SF Pro Text',
                    fontSize: 12,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.3),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

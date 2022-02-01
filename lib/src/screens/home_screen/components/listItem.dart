import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String headline;
  final String baseline;
  final VoidCallback onTap;
  final String img1;
  final String img2;
  const ListItem(
      {Key? key,
      required this.headline,
      required this.baseline,
      required this.onTap,
      required this.img1,
      required this.img2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headline,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      letterSpacing: -0.4,
                      fontWeight: FontWeight.normal,
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
            GestureDetector(
              onTap: onTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'See all',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(235, 235, 245, 0.6),
                        fontFamily: 'SF Pro Text',
                        fontSize: 17,
                        letterSpacing: -0.4,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff9796ae),
                    size: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(img1),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(img2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

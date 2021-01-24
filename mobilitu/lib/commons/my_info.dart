import 'package:mobilitu/commons/radial_progress.dart';
import 'package:mobilitu/commons/rounded_image.dart';
import 'package:mobilitu/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialProgress(
            width: 4,
            goalCompleted: 0.9,
            child: RoundedImage(
              imagePath: "assets/images/beyza.png",
              size: Size.fromWidth(150.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Beyza Guneysu",
                style: whiteNameTextStyle,
              ),
              Text(
                ", 4'",
                style: whiteNameTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "  Bilgisayar Muhendisligi",
                style: whiteSubHeadingTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:mobilitu/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileInfoBigCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;

  const ProfileInfoBigCard(
      {Key key,
      @required this.firstText,
      @required this.secondText,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16,
          bottom: 24,
          right: 16,
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(firstText, style: titleStyle),
                SizedBox(
                  width: 100,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(
                    Icons.note_add,
                    size: 45,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

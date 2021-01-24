import 'package:mobilitu/styleguide/colors.dart';
import 'package:mobilitu/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';

class DevamsizlikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              "Devamsızlık Durumu",
              style: heading2TextStyle.copyWith(color: Colors.blue),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: whiteSubHeadingTextStyle.copyWith(
                        color: hintTextColor)),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Text(
                    "Ders Sayısı",
                    style: subTitleStyle.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Center(
                      child: Text(
                        "3", //ders sayisi
                        style: whiteSub2HeadingTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: ListTile(
                    title: Text(
                      "Paralel Bilgisayarlar",
                      style: titleStyle,
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          " 2 adet devamsızlık mevcut",
                          style: whiteSubHeadingTextStyle.copyWith(
                              color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: SizedBox(
                      width: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "ONLINE",
                                  style: whiteSubHeadingTextStyle.copyWith(
                                      color: Colors.green, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.school,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}

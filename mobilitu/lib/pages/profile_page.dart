import 'package:mobilitu/commons/my_info.dart';
import 'package:mobilitu/commons/opaque_image.dart';
import 'package:mobilitu/commons/profile_info_big_card.dart';
import 'package:mobilitu/pages/devamsizlik_page.dart';
import 'package:mobilitu/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/ituu.jpg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DevamsizlikPage(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "   Devamsızlık Durumu",
                              secondText: " ",
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

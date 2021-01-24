import 'package:flutter/material.dart';
import 'package:mobilitu/palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Center(
                      child: Text(
                        'İstanbul Ticaret Üniversitesi',
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.university,
                              hint: 'Okul Numaranız',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Parola',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Üniversite mail hesabınızın şifresidir',
                              style: kBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 140,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Developers',
                              style: devHeading,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Beyza Güneysu',
                              style: devsHeading,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Hatice Kübra Karagülle',
                              style: devsHeading,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

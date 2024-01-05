import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/background_image.dart';
import 'package:flutter_stuffs_2024/shared/password_input.dart';
import 'package:flutter_stuffs_2024/shared/rounded_button.dart';
import 'package:flutter_stuffs_2024/shared/text_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../shared/pallete.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                    child: Center(
                      child: Text(
                        'Foodybite',
                        style: kHeading,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Forgot Password?',
                              style: kBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            const RoundedButton(
                              buttonText: 'Login',
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              )),
                              child: const Text(
                                'CreateNewAccount',
                                style: kBodyText,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
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

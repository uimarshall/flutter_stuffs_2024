import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/styles/spacing_styles.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, title, subtitle
              Image(
                image: AssetImage(TImages.twitterDark),
                height: 150.0,
              ),
            ],
          )

          // child: LoginForm(),
          ),
    );
  }
}

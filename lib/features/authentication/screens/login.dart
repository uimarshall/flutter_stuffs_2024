import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_stuffs_2024/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_stuffs_2024/shared/styles/spacing_styles.dart';
import 'package:flutter_stuffs_2024/shared/widgets_login_signup/form_divider.dart';
import 'package:flutter_stuffs_2024/shared/widgets_login_signup/social_buttons.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, title, subtitle
              LoginHeader(dark: dark),
              // Form
              const LoginForm(),
              // Divider
              FormDivider(
                dark: dark,
                dividerText: TTexts.orSignInWith.capitalize,
              ),
              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),
              // Footer
              FormSocialButtons(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}

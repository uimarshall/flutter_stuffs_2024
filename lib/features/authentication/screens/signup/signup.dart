import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets_login_signup/form_divider.dart';
import 'package:flutter_stuffs_2024/shared/widgets_login_signup/social_buttons.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),

              // Form
              Form(
                child: Column(
                  children: [
                    // Email
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: TTexts.firstName,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: TSizes.spaceBetweenInputField,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: TTexts.lastName,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),

                    // Username
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        labelText: TTexts.username,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),

                    // Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: TTexts.email,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),
                    // Phone number

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: TTexts.phoneNumber,
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),
                    // Password

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: TTexts.password,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),
                    // Confirm Password

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: TTexts.confirmPassword,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBetweenInputField,
                    ),

                    // Terms and conditions  Checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(
                          width: TSizes.spaceBetweenItems,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: TTexts.iAgreeTo,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: TTexts.privacyPolicy,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                      )),
                              TextSpan(
                                  text: TTexts.and,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: TTexts.termsOfUse,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                      )),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: TSizes.spaceBetweenItems,
                    ),
                    // Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),
              // Divider
              FormDivider(dark: dark, dividerText: TTexts.orSignUpWith),

              const SizedBox(
                height: TSizes.spaceBetweenItems,
              ),

              // Social buttons

              FormSocialButtons(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}

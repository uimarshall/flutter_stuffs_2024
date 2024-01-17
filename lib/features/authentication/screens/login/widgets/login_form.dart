import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/screens/signup/signup.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      // autovalidateMode: _autoValidateMode,
      // onWillPop: _onWillPop,
      // onChanged: _onFormChange,
      // onSaved: _onFormSave,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TSizes.spaceBetweenSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: TTexts.email,
              ),

              // controller: _emailController,
              // focusNode: _emailFocusNode,
              // keyboardType: TextInputType.emailAddress,
              // textInputAction: TextInputAction.next,
              // onFieldSubmitted: (_) {
              //   _emailFocusNode.unfocus();
              //   FocusScope.of(context).requestFocus(_passwordFocusNode);
              // },
              // validator: _validateEmail,
              // decoration: InputDecoration(
              //   labelText: 'Email',
              //   hintText: 'Enter your email',
              //   prefixIcon: const Icon(Icons.email),
              //   suffixIcon: _emailController.text.isEmpty
              //       ? Container(width: 0)
              //       : IconButton(
              //           icon: const Icon(Icons.close),
              //           onPressed: () {
              //             _emailController.clear();
              //             _onFormChange();
              //           },
              //         ),
              //
            ),
            const SizedBox(
              height: TSizes.spaceBetweenInputField,
            ),
            // Password

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.visibility),
              ),

              // controller: _passwordController,
              // focusNode: _passwordFocusNode,
              // obscureText: _obscureText,
              // textInputAction: TextInputAction.done,
              // onFieldSubmitted: (_) {
              //   _passwordFocusNode.unfocus();
              //   _onFormSubmit();
              // },
              // validator: _validatePassword,
              // decoration: InputDecoration(
              //   labelText: 'Password',
              //   hintText: 'Enter your password',
              //   prefixIcon: const Icon(Icons.lock),
              //   suffixIcon: IconButton(
              //     icon: Icon(
              //       _obscureText
              //           ? Icons.visibility
              //           : Icons.visibility_off,
              //     ),
              //     onPressed: () {
              //       setState(() {
              //         _obscureText = !_obscureText;
              //       });
              //     },
              //   ),
              // ),
            ),
            const SizedBox(
              height: TSizes.spaceBetweenInputField /
                  2, //this means half of the default space
            ),
            // Remember me & Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) => {},
                      // value: _rememberMe,
                      // onChanged: (value) {
                      //   setState(() {
                      //     _rememberMe = value;
                      //   });
                      // },
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBetweenInputField,
            ),

            // Login button
            SizedBox(
              width: double
                  .infinity, // this means the button will take the full width of the screen
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),

            // Sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(TTexts.dontHaveAnAccount),
                OutlinedButton(
                  onPressed: () => Get.to(() => const SignUp()),
                  child: const Text(TTexts.signUp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

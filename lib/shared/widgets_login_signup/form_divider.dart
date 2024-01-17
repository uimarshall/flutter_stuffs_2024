import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    this.dividerText,
  });

  final bool dark;
  final String? dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.black,
            thickness: 0.5,
            indent: 60.0,
            endIndent: 5.0,
          ),
        ),
        Text(
          dividerText!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.black,
            thickness: 0.5,
            indent: 5.0,
            endIndent: 60.0,
          ),
        ),
      ],
    );
  }
}

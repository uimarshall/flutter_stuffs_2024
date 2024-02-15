import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.btnText = 'View all',
    this.textColor,
    this.showActionButton = true,
    this.onPressed,
  });
  final String title, btnText;

  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor ?? const Color.fromRGBO(158, 158, 158, 1),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(btnText))
      ],
    );
  }
}

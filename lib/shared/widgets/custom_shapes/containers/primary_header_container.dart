import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        // Use stack to stack elements on top of the container which contains a background image.
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.2),
                  radius: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

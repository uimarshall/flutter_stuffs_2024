import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        // We use col because the elements will be aligned on the from top to bottom and scrollable
        child: Column(
          children: [
            // Add custom shape to the container by wrapping it with a ClipPath Widget.
            TPrimaryHeaderContainer(
              child: Column(children: []),
            )
          ],
        ),
      ),
    );
  }
}

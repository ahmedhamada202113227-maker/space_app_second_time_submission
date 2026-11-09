import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';

class BGShadowContainer extends StatelessWidget {
  const new({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.black,
            AppColors.black,
            AppColors.black,
            AppColors.black.withAlpha(120),
            AppColors.black.withAlpha(100),
          ],
        ),
      ),
    );
  }
}

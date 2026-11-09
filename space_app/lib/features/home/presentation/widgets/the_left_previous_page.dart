import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';

class TheLeftButtonPreviousPage extends StatelessWidget {
  const new({
    super.key,
    required this.currentIndex,
    required this.pageController,
    required int itemCount,
  });

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: currentIndex > 0
          ? () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          : null,
      iconSize: 30,
      color: AppColors.white,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.red),
      ),
      icon: const Icon(Icons.arrow_circle_left),
    );
  }
}

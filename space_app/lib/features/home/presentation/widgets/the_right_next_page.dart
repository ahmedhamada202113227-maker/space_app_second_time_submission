import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';

class TheRightButtonNextPage extends StatelessWidget {
  const new({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    required this.pageController,
  });

  final int currentIndex;
  final int itemCount;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: currentIndex < itemCount - 1
          ? () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          : null,
      color: AppColors.white,
      iconSize: 30,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.red),
      ),
      icon: const Icon(Icons.arrow_circle_right),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home/presentation/widgets/the_left_previous_page.dart';
import 'package:space_app/features/home/presentation/widgets/the_right_next_page.dart';
import 'package:space_app/shared/custom_text_button.dart';
import 'package:space_app/utils/app_routes.dart';
import 'package:space_app/utils/app_styles.dart';

class OnePlanetItem extends StatelessWidget {
  const OnePlanetItem({
    super.key,
    required this.height,
    required this.width,
    required this.planetsModel,
    required this.currentIndex,
    required this.itemCount,
    required this.pageController,
  });

  final double height;
  final double width;
  final PlanetsModel planetsModel;
  final int currentIndex;
  final int itemCount;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          planetsModel.planetImg,
          height: height * 0.4,
          width: width * 0.7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TheLeftButtonPreviousPage(
              currentIndex: currentIndex,
              itemCount: itemCount,
              pageController: pageController,
            ),
            Text(planetsModel.planetName, style: AppStyles.semiBold24),
            TheRightButtonNextPage(
              currentIndex: currentIndex,
              pageController: pageController,
              itemCount: itemCount,
            ),
          ],
        ),
        Gap(50),
        CustomTextButton(
          buttonTxt: 'Explore ${planetsModel.planetName}',
          height: height,
          onPress: () {
            Navigator.pushNamed(
              context,
              AppRoutes.homeDetails,
              arguments: planetsModel,
            );
          },
        ),
      ],
    );
  }
}

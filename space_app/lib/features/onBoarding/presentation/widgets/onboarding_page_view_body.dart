import 'package:flutter/material.dart';
import 'package:space_app/shared/custom_text_button.dart';
import 'package:space_app/utils/app_assets.dart';
import 'package:space_app/utils/app_routes.dart';
import 'package:space_app/utils/app_styles.dart';

class OnboardingPageViewBody extends StatelessWidget {
  const OnboardingPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      fit: .expand,
      clipBehavior: .none,
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesFrame1, fit: .cover),
        ),
        Positioned(
          top: height * 0.33,
          left: width * 0.15,
          right: 0,
          child: Text('Explore\nThe\nUniverse', style: AppStyles.bold48),
        ),
        Positioned(
          bottom: height * 0.02,
          right: 10,
          left: 10,
          child: CustomTextButton(
            buttonTxt: 'Explore',
            height: height,
            onPress: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
          ),
        ),
      ],
    );
  }
}



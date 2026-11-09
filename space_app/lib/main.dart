import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home/presentation/pages/home_page_view.dart';
import 'package:space_app/features/onBoarding/presentation/pages/onboarding_page_view.dart';
import 'package:space_app/features/home_details/presentation/pages/home_details_page_view.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_routes.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const SpaceApp()));
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.black,
      ),
      routes: {
        // Onboarding route
        AppRoutes.onboarding: (context) => OnboardingPageView(),
        // Home route
        AppRoutes.home: (context) => const HomePageView(),
        // Home details route
        AppRoutes.homeDetails: (context) {
          PlanetsModel planetsModel =
              ModalRoute.of(context)?.settings.arguments as PlanetsModel;
          return HomeDetailsPageView(
            planetsModel: planetsModel,
          );
        },
      },
      initialRoute: AppRoutes.onboarding,
    );
  }
}

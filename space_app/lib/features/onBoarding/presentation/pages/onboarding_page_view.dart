import 'package:flutter/material.dart';
import 'package:space_app/features/onBoarding/presentation/widgets/onboarding_page_view_body.dart';
import 'package:space_app/utils/app_routes.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});
  static const String id = AppRoutes.onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnboardingPageViewBody()));
  }
}

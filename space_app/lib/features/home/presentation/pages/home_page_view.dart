import 'package:flutter/material.dart';
import 'package:space_app/features/home/presentation/widgets/home_page_view_body.dart';
import 'package:space_app/utils/app_routes.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  static const String id = AppRoutes.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomePageViewBody()));
  }
}

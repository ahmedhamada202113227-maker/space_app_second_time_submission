import 'package:flutter/material.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home_details/presentation/widgets/home_details_page_view_body.dart';
import 'package:space_app/utils/app_routes.dart';

class HomeDetailsPageView extends StatelessWidget {
  const HomeDetailsPageView({super.key, required this._planetsModel, });
  static const String id = AppRoutes.homeDetails;
  final PlanetsModel _planetsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomeDetailsPageViewBody(
      planetsModel: _planetsModel,
    )));
  }
}

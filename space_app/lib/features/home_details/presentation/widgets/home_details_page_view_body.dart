import 'package:flutter/material.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home_details/presentation/widgets/first_header_of_home_details.dart';
import 'package:space_app/features/home_details/presentation/widgets/home_details_content.dart';
import 'package:space_app/shared/bg_shadow_container.dart';
import 'package:space_app/utils/app_assets.dart';
import 'package:space_app/utils/app_styles.dart';

class HomeDetailsPageViewBody extends StatelessWidget {
  const HomeDetailsPageViewBody({super.key, required this._planetsModel});

  final PlanetsModel _planetsModel;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -height * .09,
            right: 0,
            left: 0,
            child: Image.asset(Assets.assetsImagesFrame2),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BGShadowContainer(height: height),
          ),
          Positioned(
            top: height * 0.01,
            left: 10,
            right: 10,
            child: FirstHeaderOfHomeDetails(planetsModel: _planetsModel, width: width),
          ),
          Positioned(
            top: height * 0.15,
            left: 15,
            right: 0,
            child: Text(
              '${_planetsModel.planetName}: ${_planetsModel.planetTitle}',
              style: AppStyles.semiBold24,
            ),
          ),
          Positioned(
            top: height * 0.22,
            bottom: 0,
            right: 15,
            left: 15,
            child: HomeDetailsContent(planetsModel: _planetsModel, height: height, width: width),
          ),
        ],
      ),
    );
  }
}






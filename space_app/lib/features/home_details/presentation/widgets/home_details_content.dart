import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/utils/app_styles.dart';

class HomeDetailsContent extends StatelessWidget {
  const new({
    super.key,
    required this._planetsModel,
    required this.height,
    required this.width,
  });

  final PlanetsModel _planetsModel;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Image.asset(
            _planetsModel.planetImg,
            height: height * .4,
            width: width * .4,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Gap(30),
              Text('About', style: AppStyles.semiBold24),
              Gap(20),
              Text(_planetsModel.planetDesc, style: AppStyles.light16),
              Gap(40),
              Text(
                'Distance from Sun (km) : ${_planetsModel.planetsInfo.planetDistancefromSun}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Length of Day (hours) : ${_planetsModel.planetsInfo.planetLengthOfDay}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Orbital Period (Earth years) : ${_planetsModel.planetsInfo.planetOrbitalPeriod}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Radius (km) : ${_planetsModel.planetsInfo.planetRadius}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Mass (kg) : ${_planetsModel.planetsInfo.planetMass}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Gravity (m/s²) : ${_planetsModel.planetsInfo.planetGravity}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
              Text(
                'Surface Area (km²)  : ${_planetsModel.planetsInfo.planetSurfaceArea}',
                style: AppStyles.semiBold16,
              ),
              Gap(20),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_styles.dart';

class FirstHeaderOfHomeDetails extends StatelessWidget {
  const new({super.key, required this._planetsModel, required this.width});

  final PlanetsModel _planetsModel;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.red),
            fixedSize: WidgetStatePropertyAll(Size(50, 50)),
          ),
          iconSize: 35,
          icon: Icon(Icons.arrow_circle_left, color: AppColors.white),
        ),
        Text(
          _planetsModel.planetName,
          style: AppStyles.semiBold24,
          textAlign: TextAlign.center,
        ),
        Gap(width * 0.1),
      ],
    );
  }
}

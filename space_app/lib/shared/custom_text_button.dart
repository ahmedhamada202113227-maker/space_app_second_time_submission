import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.height,
    this.onPress,
    required this.buttonTxt,
  });

  final double height;
  final void Function()? onPress;
  final String buttonTxt;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.red),
        fixedSize: WidgetStatePropertyAll(Size(.infinity, height * 0.07)),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(buttonTxt, style: AppStyles.semiBold20),
          Icon(
            Icons.arrow_right_alt_outlined,
            size: 35,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}

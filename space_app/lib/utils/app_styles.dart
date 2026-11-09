import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';

abstract class AppStyles {
  // ---------------   Bold   ---------------
  static const TextStyle bold48 = TextStyle(
    color: AppColors.white,
    fontSize: 48,
    fontWeight: .w900,
  );
  // --------------- Semi Bold  ---------------
  static const TextStyle semiBold16 = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: .w700,
  );
  static const TextStyle semiBold20 = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: .w600,
  );
  static const TextStyle semiBold24 = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: .w700,
  );
  // ---------------   Light   ---------------
  static const TextStyle light16 = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: .w300,
  );
}

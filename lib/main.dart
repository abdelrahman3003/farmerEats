
import 'package:farmereats/core/constants/dependecy_injection.dart';
import 'package:farmereats/core/network/sharded_pref.dart';
import 'package:farmereats/farmerEates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // to fix hidden text bug in releas rub mod
  WidgetsFlutterBinding.ensureInitialized();
  await AppService.initializeSharedPreferences();
  await setupGetit();
  await ScreenUtil.ensureScreenSize();
  runApp(const Farmereates());
}

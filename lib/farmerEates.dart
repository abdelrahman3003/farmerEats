import 'package:farmereats/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/colors.dart';

class Farmereates extends StatelessWidget {
  const Farmereates({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  side: BorderSide(color: AppColors.grey, width: 2.w),
                ),
                primaryColor: AppColors.grey,
                scaffoldBackgroundColor: AppColors.white,
              ),
              onGenerateRoute: Routes.generateRoute,
              initialRoute: Routes.konboardingView);
        });
  }
  //   String initRout() {
  //   if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "1") {
  //     return Routes.ksinginView;
  //   }
  //   if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "2") {
  //     return Routes.kHomeView;
  //   }

  //   return Routes.konboardingView;
  // }
}

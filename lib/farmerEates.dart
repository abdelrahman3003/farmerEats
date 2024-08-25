import 'package:farmereats/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/network/sharded_pref.dart';
import 'core/theme/colors.dart';

class Farmereates extends StatelessWidget {
  const Farmereates({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  side: BorderSide(
                      color: AppColors.black, // Border color
                      width: 2.w // Border width
                      ),
                ),
                primaryColor: AppColors.black,
                scaffoldBackgroundColor: AppColors.white,
              ),
              onGenerateRoute: Routes.generateRoute,
              initialRoute: initRout());
        });
        
  }
    String initRout() {
    if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "1") {
      return Routes.ksinginView;
    }
    if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "2") {
      return Routes.kHomeView;
    }
   
    return Routes.konboardingView;
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/styles.dart';

class DayCalender extends StatelessWidget {
  const DayCalender({super.key, required this.color, required this.dayText});
  final Color color;
  final String dayText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.w),
      child: Container(
        width: 37.w,
        height: 36.h,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            dayText,
            style: Styles.font14black400w.copyWith(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}

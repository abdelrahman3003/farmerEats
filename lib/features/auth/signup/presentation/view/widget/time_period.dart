import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';

class TimePeriod extends StatelessWidget {
  const TimePeriod({
    super.key,
    required this.timeText,
  });
  final String timeText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: timeText == '8:00am - 10:00am' || timeText == "10:00am - 1:00pm"
            ? AppColors.orange
            : AppColors.grey,
      ),
      child: Center(
        child: Text(
          timeText,
          style: Styles.font14black400w,
        ),
      ),
    );
  }
}

import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/features/auth/signup/presentation/view/signup_done.dart';
import 'package:farmereats/features/auth/signup/presentation/view/widget/day_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';
import '../../../../../gen/assets.gen.dart';
import 'widget/time_period.dart';

class BusinessHoursView extends StatelessWidget {
  const BusinessHoursView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> calenderDays = ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'];
    List<String> timePeriods = [
      '8:00am - 10:00am',
      '10:00am - 1:00pm',
      '1:00pm - 4:00pm',
      '4:00pm - 7:00pm',
      '7:00pm - 10:00pm'
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                "Business Hours",
                style: Styles.font32black700w,
              ),
              SizedBox(height: 30.h),
              Opacity(
                opacity: .4,
                child: Text(
                  "Choose the hours your farm is open for pickups. This will allow customers to order deliveries.",
                  style: Styles.font14black400w,
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 36.h,
                child: ListView.builder(
                  itemCount: calenderDays.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DayCalender(
                      color: index == 2 ? AppColors.red : AppColors.grey,
                      dayText: calenderDays[index]),
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 300,
                child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 5 / 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                  ),
                  itemBuilder: (context, index) => TimePeriod(
                    timeText: timePeriods[index],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: SvgPicture.asset(Assets.icons.back)),
                  ),
                  SizedBox(width: 32.w),
                  Expanded(
                    child: AppButton(
                      text: "Continue",
                      color: AppColors.red,
                      onPressed: () {
                        context.push(const SignupDone());
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Points extends StatelessWidget {
  const Points({super.key, required this.length, required this.selectedindex});
  final int length;
  final int selectedindex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: ListView.builder(
        itemCount: length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          margin: EdgeInsets.symmetric(horizontal: 3.w),
          height: 1.h,
          width: selectedindex == index ? 24.w : 8.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.black),
        ),
      ),
    );
  }
}

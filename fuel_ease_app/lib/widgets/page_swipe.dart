// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageSwipe extends StatelessWidget {
  final int currentIndex;
  final int pageCount;

  const PageSwipe(
      {super.key, required this.currentIndex, required this.pageCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: currentIndex == index
              ? Container(
                  width: 14.w,
                  height: 8.0.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(252, 18, 61, 1)),
                )
              : Container(
                  width: 8.w,
                  height: 8.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
        ),
      ),
    );
  }
}

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';
import '../../consts/strings.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, this.icon = false, required this.onTap, this.title = next});

  final String title;
  final bool icon;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 28.w, right: 22.w),
        width: 343.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: greenColor,
          border: Border.all(width: 1.w, color: greenColor),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: myStyle(
                  size: 16.sp, color: whiteColor, weight: FontWeight.w400),
            ),
            icon
                ? Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.lock,
                        size: 24.sp,
                        color: whiteColor,
                      )
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

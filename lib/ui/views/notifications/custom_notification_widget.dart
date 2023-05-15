import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/consts.dart';
import '../../../consts/strings.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.3.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 62.w,
                height: 62.w,
                decoration: BoxDecoration(
                    color: greenColor,
                    border: Border.all(width: 2.w, color: redColor),
                    borderRadius: BorderRadius.circular(100.r)),
                child: Center(
                  child: Image.asset(
                    icBell,
                    width: 18.w,
                    height: 22.h,
                  ),
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  admin,
                  style: myStyle(
                      size: 16.sp, color: nblueColor, weight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  hiMathew,
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
                Text(
                  wouldYouLiketo,
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  '03:42 PM',
                  style: myStyle(
                      size: 12.sp, color: greyColor, weight: FontWeight.w500),
                ),
                SizedBox(
                  height: 26.h,
                ),
              ]),
            ],
          ),
          Divider(
            thickness: 1.h,
            color: greyColor,
          )
        ],
      ),
    );
  }
}

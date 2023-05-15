import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/consts.dart';
import '../../../consts/strings.dart';

class CustomOfferWidget extends StatelessWidget {
  const CustomOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
      width: 342.w,
      height: 196.h,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
                color: greenColor.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3))
          ]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$project $name',
                    style: myStyle(
                      size: 14.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      'Norem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: myStyle(
                        size: 14.sp,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  // this section for purchased date
                  Text(
                    "Date:",
                    style: myStyle(
                      size: 14.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: nblueColor,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '22/March/2022',
                        style: myStyle(
                            size: 14.sp,
                            weight: FontWeight.w600,
                            color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.watch_later_outlined,
                  //       color: nblueColor,
                  //       size: 20.sp,
                  //     ),
                  //     SizedBox(
                  //       width: 5.w,
                  //     ),
                  //     Text(
                  //       '22/March/2022',
                  //       style: myStyle(
                  //           size: 14.sp,
                  //           weight: FontWeight.w600,
                  //           color: greyColor),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  // this section for renew date
                ],
              ),
              const Spacer(),
              Image.asset(
                icCrown,
                width: 21.w,
                height: 18.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '\$300.00',
                style: myStyle(
                    size: 18.sp, weight: FontWeight.w500, color: greenColor),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}

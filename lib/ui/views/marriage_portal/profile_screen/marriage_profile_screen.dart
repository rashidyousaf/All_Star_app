import 'package:all_star/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/strings.dart';

class MarriageProfileScreen extends StatelessWidget {
  const MarriageProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                size: 25.sp,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/settingsScreen'),
              icon: Icon(
                Icons.settings,
                color: nblueColor,
                size: 25.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Center(
          child: Container(
            width: 96.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Image.asset(
              icPerson,
              width: 24.w,
              height: 31.h,
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                belleBenson,
                style: myStyle(
                    size: 24.sp, weight: FontWeight.w700, color: nblueColor),
              ),
              SizedBox(
                height: 17.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    color: nblueColor,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '+01 331 623 8413',
                    style: myStyle(
                        size: 14.sp,
                        weight: FontWeight.w400,
                        color: nblueColor),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Icon(
                    Icons.mail,
                    color: nblueColor,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'mathew.b@gmail.com',
                    style: myStyle(
                        size: 14.sp,
                        weight: FontWeight.w400,
                        color: nblueColor),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                shortBio,
                style: myStyle(
                    size: 20.sp, weight: FontWeight.w600, color: nblueColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 300.w,
                child: Text(
                  lovemusiccooking,
                  style: myStyle(
                      size: 14.sp, weight: FontWeight.w400, color: nblueColor),
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Text(
                pictures,
                style: myStyle(
                    size: 16.sp, weight: FontWeight.w600, color: redColor),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 90.w,
                height: 76.h,
                decoration: BoxDecoration(
                    color: nblueColor,
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              SizedBox(
                height: 28.h,
              ),
              Text(
                interests,
                style: myStyle(
                    size: 20.sp, weight: FontWeight.w600, color: nblueColor),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 150.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.music_video_outlined,
                      color: nblueColor,
                      size: 22.sp,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      music,
                      style: myStyle(
                          size: 14.sp,
                          weight: FontWeight.w500,
                          color: nblueColor),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Icon(
                      Icons.soup_kitchen,
                      color: nblueColor,
                      size: 22.sp,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      cooking,
                      style: myStyle(
                          size: 14.sp,
                          weight: FontWeight.w500,
                          color: nblueColor),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Icon(
                      Icons.pool_rounded,
                      color: nblueColor,
                      size: 22.sp,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      swimming,
                      style: myStyle(
                          size: 14.sp,
                          weight: FontWeight.w500,
                          color: nblueColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

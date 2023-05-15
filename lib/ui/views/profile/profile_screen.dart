import 'package:all_star/consts/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';
import '../../widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomAppbar(
          title: 'Your Information',
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(right: 24.w),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, '/settingsScreen'),
              icon: Icon(
                Icons.settings,
                color: blackColor,
                size: 25.sp,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Stack(children: [
            Image.asset(
              icProfileCircle,
              width: 97,
              height: 97.h,
            ),
            Positioned(
              top: 8.h,
              left: 2.w,
              child: Container(
                width: 78.w,
                height: 78.h,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Image.asset(
                  icPerson,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 50.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    height: 100.h,
                    child: Image.asset(
                      icidPic,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: myStyle(
                            size: 12.sp,
                            color: greyColor,
                            weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Mashrafe Bin Mortaza',
                        style: myStyle(size: 16.sp, weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        fatherName,
                        style: myStyle(
                            size: 12.sp,
                            color: greyColor,
                            weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Mashrafe Bin Mortaza',
                        style: myStyle(size: 16.sp, weight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
                width: double.maxFinite,
                height: 40.h,
                color: lgreyColor,
                child: Text(
                  personalDetails,
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              // this is first section for gender and mobile number
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    gender,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 121.w,
                  ),
                  Text(
                    mobileNumber,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                ],
              ),

              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      male,
                      style: myStyle(size: 16.sp, weight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    '01855556252',
                    style: myStyle(size: 16.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              // this section for second information like cccupations and NID number
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    occupation,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    nidNumber,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 90.w,
                    child: Text(
                      houseWife,
                      style: myStyle(size: 16.sp, weight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  Text(
                    '01855556252',
                    style: myStyle(size: 16.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              // this section for address
              SizedBox(
                height: 18.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
                width: double.maxFinite,
                height: 40.h,
                color: lgreyColor,
                child: Text(
                  'Address',
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10.h),
                width: double.maxFinite,
                height: 80.h,
                child: Text(
                  'ha akdj la dka flka fklafj aldfkj aflkaj flj',
                  style: myStyle(size: 16.sp, weight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

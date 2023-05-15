import 'package:all_star/consts/consts.dart';
import 'package:all_star/ui/widgets/custom_appbar.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/strings.dart';

class NotificationsDetailScreen extends StatelessWidget {
  const NotificationsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: postsByAdmin,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, right: 24.w, bottom: 15.h),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 8.w, top: 12.h, right: 10.w),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color: greenColor.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ],
                          ),
                          height: 108.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                        color: greenColor,
                                        borderRadius:
                                            BorderRadius.circular(100.r)),
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
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          admin,
                                          style: myStyle(
                                              size: 14.sp,
                                              color: nblueColor,
                                              weight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          '03:42 PM',
                                          style: myStyle(
                                              size: 12.sp,
                                              color: greyColor,
                                              weight: FontWeight.w500),
                                        ),
                                      ]),
                                ],
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                'Hello guys! Today, I want to share my investment plan for All star app. Check my profile for more works.Thank you!',
                                style: myStyle(
                                    size: 12.sp,
                                    color: darkgreyColor,
                                    weight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        SizedBox(
                          height: 38.h,
                          child: CustomButton(
                            onTap: () {},
                            title: interested,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/consts.dart';
import '../../../consts/strings.dart';
import 'custom_offer_widget.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenColor,
        title: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/notificationsScreen'),
            icon: Image.asset(
              icBell,
              width: 18.w,
              height: 22.h,
            ),
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.maxFinite,
              height: 155.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80.r),
                      bottomRight: Radius.circular(80.r)),
                  color: redColor),
            ),
            Container(
              width: double.maxFinite,
              height: 150.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80.r),
                      bottomRight: Radius.circular(80.r)),
                  color: greenColor),
              child: Column(
                children: [
                  Text(
                    totalAmount,
                    textAlign: TextAlign.center,
                    style: myStyle(
                        color: nblueColor,
                        size: 16.sp,
                        weight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '\$1065.50',
                    textAlign: TextAlign.center,
                    style: myStyle(
                        color: whiteColor,
                        size: 30.sp,
                        weight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            // this container for plan purchased first time
            Positioned(
              top: 80.h,
              left: 20.w,
              child: Container(
                padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                width: 342.w,
                height: 295.h,
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
                              plan,
                              style: myStyle(
                                size: 14.sp,
                                weight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              advancedU,
                              style: myStyle(
                                size: 14.sp,
                                weight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            // this section for purchased date
                            Text(
                              purchaseDate,
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
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
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
                              height: 10.h,
                            ),
                            // this section for renew date
                            Text(
                              renewableDate,
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
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
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
                              size: 18.sp,
                              weight: FontWeight.w500,
                              color: greenColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 130.w,
                          height: 43.h,
                          child: CustomButton(
                            onTap: () {},
                            title: 'Exit $plan',
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          width: 150.w,
                          height: 43.h,
                          child: CustomButton(
                            onTap: () {},
                            title: '$upgrade $plan',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 230.h,
        ),
        const Center(
          child: CustomOfferWidget(),
        ),
      ]),
    );
  }
}

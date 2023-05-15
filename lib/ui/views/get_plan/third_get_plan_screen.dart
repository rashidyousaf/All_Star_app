import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';

import '../../widgets/custom_appbar.dart';

class ThirdGetPlanScreen extends StatelessWidget {
  const ThirdGetPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppbar(),
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 65.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r)),
                      color: redColor),
                ),
                Container(
                  width: double.maxFinite,
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r)),
                      color: greenColor),
                  child: Text(
                    registered,
                    textAlign: TextAlign.center,
                    style: myStyle(
                        color: whiteColor,
                        size: 17.sp,
                        weight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            Image.asset(
              icTick,
              width: 110.w,
              height: 110.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 180.w,
              child: Text(
                "You have successfully Registered",
                textAlign: TextAlign.center,
                style: myStyle(size: 18.sp, color: blueColor),
              ),
            ),
            const Spacer(),
            CustomButton(
                title: "Great",
                onTap: () {
                  Navigator.pushNamed(context, '/offerScreen');
                }),
            SizedBox(
              height: 50.h,
            ),
          ]),
    );
  }
}

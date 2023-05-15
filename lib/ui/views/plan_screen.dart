import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_plan_container.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar(),
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: 105.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.r),
                        bottomRight: Radius.circular(50.r)),
                    color: redColor),
              ),
              Container(
                width: double.maxFinite,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.r),
                        bottomRight: Radius.circular(50.r)),
                    color: greenColor),
                child: Column(
                  children: [
                    Text(
                      toGetPremium,
                      textAlign: TextAlign.center,
                      style: myStyle(
                          color: nblueColor,
                          size: 36.sp,
                          weight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      subscribeAPlane,
                      textAlign: TextAlign.center,
                      style: myStyle(
                          color: redColor,
                          size: 18.sp,
                          weight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  selectYourPlane,
                  textAlign: TextAlign.center,
                  style: myStyle(
                      color: nblueColor, size: 24.sp, weight: FontWeight.w600),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomPlanContainer(
                  title: starterX,
                  icon: icStar,
                  price: '\$100',
                  onTap: () {
                    openPopup(context);
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomPlanContainer(
                  title: proBuddy,
                  icon: icDiamond,
                  price: '\$200',
                  onTap: () {
                    openPopup(context);
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomPlanContainer(
                  title: advancedU,
                  icon: icAdvance,
                  price: '\$300',
                  onTap: () {
                    openPopup(context);
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/paymentScreen');
                  },
                  title: proceedtobuy,
                  icon: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

void openPopup(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: AlertDialog(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    icCircleSubcribe,
                    width: 25.w,
                    height: 25.h,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      icCancel,
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                subscribeourPlane,
                style: myStyle(size: 20.sp, weight: FontWeight.w700),
              ),
            ],
          ),
          content: Text(
            "Dorem ipsum dolor sit amet, consectetur adipiscing elit.Dorem ipsum dolor sit amet, consectetur adipiscing elit.Dorem ipsum dolor sit amet, consectetur adipiscing elit.Dorem ipsum dolor sit amet, consectetur adipiscing elit.",
            textAlign: TextAlign.center,
            style: myStyle(size: 16.sp),
          ),
          actions: [
            SizedBox(
              width: 293.w,
              height: 52.h,
              child: CustomButton(
                onTap: () =>
                    Navigator.pushNamed(context, '/firstGetPlanScreen'),
                title: subscribe,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      );
    },
  );
}

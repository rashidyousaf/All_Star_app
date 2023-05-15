import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/first_get_plan_widget.dart';

class FirsGetPlanScreen extends StatelessWidget {
  const FirsGetPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            size: 30.sp,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        // this row for heading
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 4.w,
                    height: 54.h,
                    color: greyColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    getOurPlan,
                    style: myStyle(size: 24.sp, weight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Divider(
                thickness: 2.h,
                color: greyColor,
              ),
              SizedBox(
                height: 40.h,
              ),
              // this row for price 9.99 dollar
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    '\$',
                    style: myStyle(
                        size: 15.sp, color: greyColor, weight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    '9.99',
                    style: myStyle(size: 28.sp, weight: FontWeight.w700),
                  ),
                  Text(
                    '/year',
                    style: myStyle(size: 18.sp, weight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                enhanceYourExprience,
                style: myStyle(size: 15.sp, weight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              const FirstGetPlanWidget(
                title: interestFree,
              ),
              SizedBox(
                height: 17.h,
              ),
              const FirstGetPlanWidget(
                title: investmentOpp,
              ),
              SizedBox(
                height: 17.h,
              ),
              const FirstGetPlanWidget(
                title: postComment,
              ),
              SizedBox(
                height: 17.h,
              ),
              const FirstGetPlanWidget(
                title: marriagePortal,
              ),
            ],
          ),
        ),
        const Spacer(),
        Center(
          child: CustomButton(
            onTap: () {
              Navigator.pushNamed(context, '/SecondGetPlanScreen');
            },
            title: proceed,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    ));
  }
}

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';

class FirstGetPlanWidget extends StatelessWidget {
  const FirstGetPlanWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icCheck,
          width: 16.w,
          height: 16.h,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          title,
          style: myStyle(
              color: darkgreyColor, size: 16.sp, weight: FontWeight.w400),
        ),
      ],
    );
  }
}

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';
import '../../consts/strings.dart';

class FourthScreenWidget extends StatelessWidget {
  const FourthScreenWidget({super.key, required this.num, required this.title});
  final String num;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 22.w,
          height: 22.h,
          decoration: BoxDecoration(
            color: lgreyColor,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
            child: Text(
              num,
              style: myStyle(size: 14.sp, weight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        SizedBox(
          width: 260.w,
          child: Text(
            title,
            style:
                myStyle(size: 14.sp, weight: FontWeight.w500, color: greyColor),
          ),
        ),
      ],
    );
  }
}

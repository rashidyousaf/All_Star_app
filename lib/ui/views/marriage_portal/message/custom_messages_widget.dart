import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';
import '../../../../consts/strings.dart';

class CustomMessagesWidget extends StatelessWidget {
  const CustomMessagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        top: 20.h,
        bottom: 10.h,
      ),
      width: 342.w,
      height: 99.h,
      decoration: BoxDecoration(
        color: whiteColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 58.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: nblueColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                belleBenson,
                style: myStyle(
                    size: 16.sp, weight: FontWeight.w600, color: nblueColor),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: 190.w,
                child: Text(
                  'Hi, How are you? Nice to meet you? Free now, You?',
                  style: myStyle(
                      size: 14.sp, weight: FontWeight.w500, color: nblueColor),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '3:45 PM',
                style: myStyle(
                    size: 12.sp, weight: FontWeight.w500, color: nblueColor),
              ),
              const Spacer(),
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: const Color(0xffD6386F),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

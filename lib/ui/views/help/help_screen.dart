import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_payment_TextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

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
          Padding(
            padding: EdgeInsets.only(top: 21.h, left: 24.w, right: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 130.w,
                  child: Text(
                    feelFree,
                    style: myStyle(size: 26.sp, weight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 105.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        size: 25.sp,
                        color: whiteColor,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        callUS,
                        style: myStyle(
                            size: 14.sp,
                            weight: FontWeight.w600,
                            color: whiteColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                const CustomPaymentTextfield(title: '', hint: name),
                const CustomPaymentTextfield(title: '', hint: eMainmail),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 130.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 1.w, color: greyColor)),
                  child: TextField(
                    maxLines: 20,
                    cursorHeight: 20.h,
                    cursorColor: nblueColor,
                    decoration: InputDecoration(

                        // section for removing border
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15.w,
                          bottom: 11.h,
                          top: 10.h,
                        ),
                        hintText: message,
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: greyColor)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

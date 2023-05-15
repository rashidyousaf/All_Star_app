import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDetailWidget extends StatelessWidget {
  const ProfileDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: nblueColor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.h,
            color: nblueColor,
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  belleBenson,
                  style: myStyle(
                      size: 24.sp, weight: FontWeight.w600, color: nblueColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  helloFriends,
                  style: myStyle(
                      size: 20.sp, weight: FontWeight.w600, color: nblueColor),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 170.h,
                  child: Text(
                    lovemusiccooking,
                    style: myStyle(
                        size: 16.sp,
                        weight: FontWeight.w400,
                        color: nblueColor),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  interests,
                  style: myStyle(
                      size: 20.sp, weight: FontWeight.w600, color: nblueColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 150.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.music_video_outlined,
                        color: nblueColor,
                        size: 22.sp,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        music,
                        style: myStyle(
                            size: 14.sp,
                            weight: FontWeight.w500,
                            color: nblueColor),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Icon(
                        Icons.soup_kitchen,
                        color: nblueColor,
                        size: 22.sp,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        cooking,
                        style: myStyle(
                            size: 14.sp,
                            weight: FontWeight.w500,
                            color: nblueColor),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Icon(
                        Icons.pool_rounded,
                        color: nblueColor,
                        size: 22.sp,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        swimming,
                        style: myStyle(
                            size: 14.sp,
                            weight: FontWeight.w500,
                            color: nblueColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, '/chatSplashScreen'),
                  title: interested,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

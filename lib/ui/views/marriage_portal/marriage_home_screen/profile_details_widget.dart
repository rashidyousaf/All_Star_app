

import 'package:all_star/consts/consts.dart';
import 'package:all_star/core/model/user_model.dart';
import 'package:all_star/ui/widgets/custom_button.dart';

class ProfileDetailWidget extends StatelessWidget {
  final UserModel userData;
  const ProfileDetailWidget({super.key, required this.userData});

// IconData? getIconForValue(String value) {
//     final choice = choices.firstWhere(
//       (item) => item['value'] == value,
//       orElse: () =>  null,
//     );
//     return choice != null ? choice['icon'] : null;
//   }

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
                  userData.name.toString(),
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
                  height: 150.h,
                  child: Text(
                    userData.about.toString(),
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
                  child: GridView.builder(
                      itemCount: userData.interests != null
                          ? userData.interests!.length
                          : 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.h,
                          mainAxisExtent: 30.w),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Icon(
                              Icons.music_video_outlined,
                              color: nblueColor,
                              size: 22.sp,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              color: lgreyColor,
                              width: 73.w,
                              child: Text(
                                swimming,
                                style: myStyle(
                                    size: 14.sp,
                                    weight: FontWeight.w500,
                                    color: nblueColor),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, '/chatSplashScreen'),
                  title: interested,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

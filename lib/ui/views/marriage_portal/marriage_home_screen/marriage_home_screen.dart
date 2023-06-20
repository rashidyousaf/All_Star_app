import 'package:all_star/consts/consts.dart';
import 'package:all_star/ui/views/marriage_portal/marriage_home_screen/profile_details_widget.dart';

class MarriageHomeScreen extends StatelessWidget {
  const MarriageHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Row(
              children: [
                Text(
                  findProposal,
                  style: myStyle(
                      size: 18.sp, weight: FontWeight.w600, color: nblueColor),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/notificationsScreen'),
                  child: Image.asset(
                    icBell2,
                    width: 23.w,
                    height: 22.h,
                  ),
                ),
                SizedBox(
                  width: 13.w,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/messagesScreen'),
                  child: Image.asset(
                    icChat,
                    width: 27.w,
                    height: 22.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileDetailWidget()),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 13.w, top: 120.h),
                      width: 165.w,
                      height: 179.h,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                image,
                              ),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              belleBenson,
                              style: myStyle(
                                  size: 14.sp,
                                  weight: FontWeight.w600,
                                  color: whiteColor),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Age: 28',
                              style: myStyle(
                                  size: 12.sp,
                                  weight: FontWeight.w500,
                                  color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

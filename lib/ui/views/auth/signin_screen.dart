import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/consts.dart';
import '../../../consts/strings.dart';
import '../../widgets/auth_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  icDesign,
                  width: 147.w,
                  height: 270.h,
                ),
                Positioned(
                  top: 100.h,
                  left: 142.w,
                  child: Column(children: [
                    Image.asset(
                      icLogo,
                      width: 123.w,
                      height: 166.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      appName,
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: redColor),
                    )
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        signIn,
                        style: myStyle(size: 28.sp, weight: FontWeight.w700),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text(
                            emailAddress,
                            style: myStyle(color: greyColor, size: 14.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text(
                            emailAddress,
                            style: myStyle(color: greyColor, size: 14.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        forgotPass,
                        style: myStyle(color: blueColor, size: 16.sp),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      AuthButton(
                        title: signIn,
                        onTap: () {
                          Navigator.pushNamed(context, '/firstInfoScreen');
                        },
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            donthaveanaccount,
                            style: myStyle(size: 16.sp),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/signupScreen'),
                            child: Text(
                              createAccount,
                              style: myStyle(color: blueColor, size: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}

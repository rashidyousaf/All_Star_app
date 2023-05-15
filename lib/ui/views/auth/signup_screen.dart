import 'package:all_star/ui/views/auth/components/auth_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/consts.dart';
import '../../../consts/strings.dart';
import '../../widgets/auth_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
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
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Text(
                signUp,
                style: myStyle(size: 28.sp, weight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthTextfield(title: emailAddress),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthTextfield(title: password),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthTextfield(title: confirmPass),
                      SizedBox(
                        height: 50.h,
                      ),
                      AuthButton(
                        title: signIn,
                        onTap: () {
                          Navigator.pushNamed(context, '/otpNumberScreen');
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

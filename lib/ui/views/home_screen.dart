import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/auth_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
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
            ),
            SizedBox(
              height: 91.h,
            ),
            Center(
                child: AuthButton(
              title: signIn,
              onTap: () {
                Navigator.pushNamed(context, '/signinScreen');
              },
            )),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: AuthButton(
              title: signUp,
              bgColor: whiteColor,
              textColor: blackColor,
              onTap: () => Navigator.pushNamed(context, '/signupScreen'),
            )),
            SizedBox(
              height: 250.h,
            ),
          ],
        ),
      ),
    );
  }
}

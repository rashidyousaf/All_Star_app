import 'package:all_star/core/controller/signup_controller.dart';

import '../../../consts/consts.dart';
import '../../../core/service/auth_service.dart';
import '../../widgets/auth_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthService aS = AuthService();
    final sC = Provider.of<SignupController>(context);
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                        controller: emailController,
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
                        controller: passwordController,
                        decoration: InputDecoration(
                          label: Text(
                            password,
                            style: myStyle(color: greyColor, size: 14.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/otpNumberScreen'),
                        child: Text(
                          forgotPass,
                          style: myStyle(color: blueColor, size: 16.sp),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      AuthButton(
                        loading: sC.isLoading,
                        title: signIn,
                        onTap: () {
                          sC.setIsLoading(true);
                          if (emailController.text.isNotEmpty ||
                              emailController.text.isNotEmpty) {
                            aS.signInWithEmailAndPassword(emailController.text,
                                passwordController.text, context);
                            sC.setIsLoading(false);
                          } else {
                            Utils().toastMessage('All field requird');
                            sC.setIsLoading(false);
                          }
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

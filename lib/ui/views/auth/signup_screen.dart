import 'package:all_star/core/service/auth_service.dart';
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
    AuthService aS = AuthService();
    // final sC = Provider.of<SignupController>(context);
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                      AuthTextfield(
                        title: emailAddress,
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthTextfield(
                        title: password,
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthTextfield(
                        title: confirmPass,
                        controller: confirmPasswordController,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      AuthButton(
                        title: signUp,
                        onTap: () {
                          if (passwordController.text !=
                                  confirmPasswordController.text &&
                              passwordController.text.isNotEmpty &&
                              confirmPasswordController.text.isNotEmpty &&
                              emailController.text.isNotEmpty) {
                            Utils().toastMessage('''Password don't match''');
                          } else if (emailController.text.isEmpty ||
                              passwordController.text.isEmpty ||
                              confirmPasswordController.text.isEmpty) {
                            Utils().toastMessage('''All fields required!''');
                          } else {
                            aS.creatUserWithEmailAndPassword(
                                emailController.text,
                                passwordController.text,
                                context);
                          }
                          // Navigator.pushNamed(context, '/firstInfoScreen');
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

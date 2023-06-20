import 'package:all_star/consts/consts.dart';
import 'package:all_star/core/controller/signup_controller.dart';
import 'package:all_star/core/service/auth_service.dart';
import 'package:all_star/ui/views/auth/components/auth_textfield.dart';
import 'package:all_star/ui/widgets/auth_button.dart';

class OtpNumberScreen extends StatelessWidget {
  const OtpNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    AuthService aS = AuthService();
    final sC = Provider.of<SignupController>(context);

    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 75.h,
          ),
          if (!isKeyboard)
            Image.asset(
              icOtp,
              width: 223.w,
              height: 233.h,
            ),
          if (isKeyboard)
            Image.asset(
              icOtp,
              width: 100.w,
              height: 113.h,
            ),
          SizedBox(
            height: 60.h,
          ),
          Text(
            otpVerification,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            width: 300.w,
            child: Text(
              weWillSendYou,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.email_outlined,
                color: greyColor,
                size: 30.sp,
              ),
              SizedBox(
                width: 5.w,
              ),
              SizedBox(
                  width: 290.w,
                  child: AuthTextfield(
                      controller: emailController, title: "Enter email")),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 60.h,
            width: 343.w,
            child: AuthButton(
                loading: sC.isLoading,
                onTap: () {
                  sC.setIsLoading(true);
                  if (emailController.text.isNotEmpty) {
                    aS.recoverPassword(emailController.text, context);
                    sC.setIsLoading(false);
                  } else {
                    sC.setIsLoading(false);
                    Utils().toastMessage('Please enter email!');
                  }
                },
                title: getOpt),
          ),
        ],
      ),
    );
  }
}

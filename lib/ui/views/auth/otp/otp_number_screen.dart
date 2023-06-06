import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/views/auth/components/auth_textfield.dart';
import 'package:all_star/ui/widgets/auth_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpNumberScreen extends StatelessWidget {
  const OtpNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
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
            children: [
              Icon(
                Icons.phone_outlined,
                color: greyColor,
                size: 25.sp,
              ),
              SizedBox(
                width: 5.w,
              ),
              SizedBox(width: 290.w, child: AuthTextfield(title: mobileNumber)),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 60.h,
            width: 343.w,
            child: AuthButton(
                onTap: () => Navigator.pushNamed(context, '/otpCodeScreen'),
                title: getOpt),
          ),
        ],
      ),
    );
  }
}

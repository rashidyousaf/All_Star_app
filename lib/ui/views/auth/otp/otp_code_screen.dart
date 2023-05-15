import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/views/auth/components/auth_textfield.dart';
import 'package:all_star/ui/widgets/auth_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 75.h,
          ),
          Image.asset(
            icOtp,
            width: 223.w,
            height: 233.h,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            otpVerification,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            width: 300.w,
            child: Text(
              "$theOTPSent +998 91 234 56 87",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5.w,
              ),
              SizedBox(width: 48.w, child: AuthTextfield(title: '')),
              SizedBox(
                width: 24.w,
              ),
              SizedBox(width: 48.w, child: AuthTextfield(title: '')),
              SizedBox(
                width: 24.w,
              ),
              SizedBox(width: 48.w, child: AuthTextfield(title: '')),
              SizedBox(
                width: 24.w,
              ),
              SizedBox(width: 48.w, child: AuthTextfield(title: '')),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          SizedBox(
            height: 100.h,
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

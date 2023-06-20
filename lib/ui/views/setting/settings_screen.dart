import 'package:all_star/core/service/auth_service.dart';
import 'package:all_star/ui/views/setting/custom_setting_widget.dart';
import '../../../consts/consts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService aS = AuthService();
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            size: 30.sp,
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        // this row for heading
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                settings,
                style: myStyle(
                    size: 36.sp, weight: FontWeight.w600, color: nblueColor),
              ),
              SizedBox(
                height: 11.h,
              ),

              // this row for price 9.99 dollar

              Text(
                enhanceYourExprience,
                style: myStyle(
                    size: 16.sp, weight: FontWeight.w500, color: blueColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomSettingWidget(
                icon: icAccount,
                title: account,
                onTap: () {},
              ),
              SizedBox(
                height: 27.h,
              ),
              CustomSettingWidget(
                icon: icPayment,
                title: payment,
                onTap: () => Navigator.pushNamed(context, '/paymentScreen'),
              ),
              SizedBox(
                height: 27.h,
              ),
              CustomSettingWidget(
                icon: icPrivacy,
                title: privacyOptions,
                onTap: () => Navigator.pushNamed(context, '/privacyScreen'),
              ),
              SizedBox(
                height: 36.h,
              ),
              Divider(
                thickness: 1.h,
                color: greyColor,
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomSettingWidget(
                icon: icHelp,
                title: helpCenter,
                onTap: () => Navigator.pushNamed(context, '/helpScreen'),
              ),
              SizedBox(
                height: 27.h,
              ),
              CustomSettingWidget(
                icon: icTerms,
                title: "Sign Out",
                onTap: () {
                  aS.signOut(context);
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

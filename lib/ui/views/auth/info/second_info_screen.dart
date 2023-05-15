import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:all_star/ui/widgets/custom_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';
import '../../../../consts/strings.dart';
import '../../../widgets/custom_appbar.dart';

class SeconInfoScreen extends StatelessWidget {
  const SeconInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppbar(
          title: 'Information',
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 48.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 34.h,
                  ),
                  CustomTextfield(
                    title: passportNo,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantName,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantFatherName,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantMotherName,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: dateOfBirth,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: presentAddress,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: originAddress,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButton(onTap: () {
                    Navigator.pushNamed(context, '/thirdInfoScreen');
                  }),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

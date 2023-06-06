import 'dart:developer';

import 'package:all_star/core/controller/signup_controller.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:all_star/ui/widgets/custom_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../consts/consts.dart';
import '../../../../consts/strings.dart';
import '../../../widgets/custom_appbar.dart';

class SeconInfoScreen extends StatelessWidget {
  const SeconInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);

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
                    controller: sC.idNumberController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantName,
                    controller: sC.nameController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantFatherName,
                    controller: sC.fatherNameController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: applicantMotherName,
                    controller: sC.motherNameController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: dateOfBirth,
                    controller: sC.dateOfBirthController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: presentAddress,
                    controller: sC.presentAddressController,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextfield(
                    title: originAddress,
                    controller: sC.originAddressController,
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

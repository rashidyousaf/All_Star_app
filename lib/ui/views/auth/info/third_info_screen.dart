import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_appbar.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/signup_controller.dart';
import '../../../widgets/custom_checkbox.dart';
import '../../../widgets/custom_checkbox2.dart';

class ThirdInfoScreen extends StatelessWidget {
  const ThirdInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);

    // log("name: ${sC.nameController.text.toString()}");
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: additionalInfo,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 46.w, top: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  gender,
                  style: myStyle(
                      size: 14.sp, color: greyColor, weight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomCheckbox(
                  controller: sC.genderController,
                  // value: _selectedGender,
                  // onChanged: (value) {
                  //   setState(() {
                  //     _selectedGender = value;
                  //     sC.genderController.text = value.toString();
                  //     log('$_selectedGender');
                  //   },
                  //   );
                  // },
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  thickness: 1.h,
                  color: greyColor,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  occupation,
                  style: myStyle(
                      size: 14.sp, color: greyColor, weight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomCheckbox2(
                  controller: sC.occupationController,
                  // onChanged: (value) {
                  //   setState(() {
                  //     _selectedGender2 = value;
                  //     sC.occupationController.text = value.toString();
                  //     log('$value');
                  //   });
                  // },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Divider(
                  thickness: 1.h,
                  color: greyColor,
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomButton(onTap: () {
            Navigator.pushNamed(context, '/fourthInfoScreen');
          }),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}

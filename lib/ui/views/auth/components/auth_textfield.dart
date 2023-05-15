import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';

// ignore: must_be_immutable
class AuthTextfield extends StatelessWidget {
  AuthTextfield({super.key, required this.title, this.controller});
  final String title;
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              myStyle(size: 12.sp, weight: FontWeight.w600, color: greyColor),
        ),
        TextField(
          controller: controller,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
          cursorColor: blackColor,
          cursorHeight: 20.h,
          decoration: const InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor))),
        )
      ],
    );
  }
}

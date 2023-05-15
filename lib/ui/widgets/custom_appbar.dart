import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.title = ''});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: greenColor,
        title: Text(
          title!,
          style:
              myStyle(size: 18.sp, weight: FontWeight.w600, color: whiteColor),
        ),
      ),
    );
  }
}

import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';

class FirstInfoScreen extends StatelessWidget {
  const FirstInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: scanID,
          ),
          SizedBox(
            height: 66.h,
          ),
          Text(
            scantheFrontSide,
            style: myStyle(size: 12.sp, weight: FontWeight.w500),
          ),
          SizedBox(
            height: 30.h,
          ),
          Stack(clipBehavior: Clip.none, children: [
            Image.asset(
              icIdcardfront,
              width: 298.w,
              height: 183.h,
            ),
            Positioned(
              top: 150.h,
              left: 230.w,
              child: Image.asset(
                icCamera,
                width: 50.w,
                height: 50.h,
              ),
            ),
          ]),
          SizedBox(
            height: 45.h,
          ),
          Text(
            scantheBackSide,
            style: myStyle(size: 12.sp, weight: FontWeight.w500),
          ),
          SizedBox(
            height: 17.h,
          ),
          Stack(clipBehavior: Clip.none, children: [
            Image.asset(
              icIdcardback,
              width: 298.w,
              height: 183.h,
            ),
            Positioned(
              top: 150.h,
              left: 230.w,
              child: Image.asset(
                icCamera,
                width: 50.w,
                height: 50.h,
              ),
            ),
          ]),
          const Spacer(),
          CustomButton(onTap: () {
            Navigator.pushNamed(context, '/secondInfoScreen');
          }),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}

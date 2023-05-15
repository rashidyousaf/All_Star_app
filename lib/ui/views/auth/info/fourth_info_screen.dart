import 'package:all_star/ui/widgets/fourth_screen_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/consts.dart';
import '../../../../consts/strings.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';

class FouthInfoScreen extends StatelessWidget {
  const FouthInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: additionalInfo,
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 46.w, top: 35.h),
            child: Column(
              children: [
                Image.asset(
                  icUplaoadProfile,
                  width: 106.w,
                  height: 106.h,
                ),
                SizedBox(
                  height: 70.h,
                ),
                const FourthScreenWidget(
                  num: '1',
                  title: removeyoureye,
                ),
                SizedBox(
                  height: 22.h,
                ),
                const FourthScreenWidget(
                  num: '2',
                  title: placeyourface,
                ),
                SizedBox(
                  height: 22.h,
                ),
                const FourthScreenWidget(
                  num: '3',
                  title: makeSurethere,
                ),
                SizedBox(
                  height: 22.h,
                ),
                const FourthScreenWidget(
                  num: '4',
                  title: doNotShake,
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomButton(onTap: () {
            Navigator.pushNamed(context, '/fifthInfoScreen');
          }),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}

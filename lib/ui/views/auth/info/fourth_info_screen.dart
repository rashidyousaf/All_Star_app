import 'package:all_star/ui/widgets/custom_image_picker.dart';
import 'package:all_star/ui/widgets/fourth_screen_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../consts/consts.dart';
import '../../../../consts/strings.dart';
import '../../../../core/controller/signup_controller.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';

class FouthInfoScreen extends StatefulWidget {
  const FouthInfoScreen({super.key});

  @override
  State<FouthInfoScreen> createState() => _FouthInfoScreenState();
}

class _FouthInfoScreenState extends State<FouthInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);
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
                sC.profileImgController.text.isEmpty
                    ? CustomImagePicker(
                        onChanged: (value) {
                          sC.profileImgController.text = value;
                          setState(() {});
                        },
                        img: icUplaoadProfile,
                        width: 106.w,
                        height: 106.h,
                      )
                    : // this portion for profile image
                    Stack(children: [
                        Image.asset(
                          icProfileCircle,
                          width: 97,
                          height: 97.h,
                        ),
                        Positioned(
                          top: 8.h,
                          left: 2.w,
                          child: CachedNetworkImage(
                            imageUrl: sC.profileImgController.text,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageBuilder: (context, imageProvider) {
                              return Container(
                                width: 78.w,
                                height: 78.h,
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(50.r),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.fill)),
                              );
                            },
                          ),
                        ),
                      ]),
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

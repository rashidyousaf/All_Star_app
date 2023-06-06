import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/core/controller/signup_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_picker.dart';

class FirstInfoScreen extends StatefulWidget {
  const FirstInfoScreen({super.key});

  @override
  State<FirstInfoScreen> createState() => _FirstInfoScreenState();
}

class _FirstInfoScreenState extends State<FirstInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);

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

          // this portion for uper id card or password image
          Stack(clipBehavior: Clip.none, children: [
            sC.frontIdImgController.text.isEmpty
                ? Image.asset(
                    icIdcardfront,
                    width: 298.w,
                    height: 183.h,
                  )
                : CachedNetworkImage(
                    imageUrl: sC.frontIdImgController.text,
                    placeholder: (context, url) => SizedBox(
                        width: 298.w,
                        height: 183.h,
                        child:
                            const Center(child: CircularProgressIndicator())),
                    imageBuilder: (context, imageProvider) {
                      return Container(
                        width: 298.w,
                        height: 183.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.fill)),
                      );
                    },
                  ),
            // : SizedBox(
            //     width: 298.w,
            //     height: 183.h,
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(10.r),
            //       child: Image.network(
            //         sC.frontIdImgController.text,
            //         fit: BoxFit.fill,
            //       ),
            //     ),
            //   ),
            Positioned(
              top: 150.h,
              left: 230.w,
              child: CustomImagePicker(
                onChanged: (value) {
                  sC.frontIdImgController.text = value;
                  setState(() {});
                },
                img: icCamera,
                width: 50.w,
                height: 50.h,
              ),
            ),
          ]),
          SizedBox(
            height: 45.h,
          ),
          // this portion for bottom id card or password image
          Text(
            scantheBackSide,
            style: myStyle(size: 12.sp, weight: FontWeight.w500),
          ),
          SizedBox(
            height: 17.h,
          ),
          Stack(clipBehavior: Clip.none, children: [
            sC.backIdImgController.text.isEmpty
                ? Image.asset(
                    icIdcardback,
                    width: 298.w,
                    height: 183.h,
                  )
                : CachedNetworkImage(
                    imageUrl: sC.backIdImgController.text,
                    placeholder: (context, url) => SizedBox(
                        width: 298.w,
                        height: 183.h,
                        child:
                            const Center(child: CircularProgressIndicator())),
                    imageBuilder: (context, imageProvider) {
                      return Container(
                        width: 298.w,
                        height: 183.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.fill)),
                      );
                    },
                  ),
            Positioned(
              top: 150.h,
              left: 230.w,
              child: CustomImagePicker(
                onChanged: (value) {
                  sC.backIdImgController.text = value;
                  setState(() {});
                },
                img: icCamera,
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

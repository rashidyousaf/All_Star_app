import 'package:cached_network_image/cached_network_image.dart';

import '../../../../consts/consts.dart';
import '../../core/controller/signup_controller.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class CustomProfileScreen extends StatelessWidget {
  final bool settingShow;
  final String profileImg;
  final String frontId;
  final String namE;
  final String fatherName;
  final String genDer;
  final String mobileNumber;
  final String occupation;
  final String nidNumber;
  final String address;
  const CustomProfileScreen(
      {super.key,
      required this.profileImg,
      required this.frontId,
      required this.namE,
      required this.fatherName,
      required this.genDer,
      required this.mobileNumber,
      required this.occupation,
      required this.nidNumber,
      required this.address,
      this.settingShow = true});

  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // this section custom app
        const CustomAppbar(
          title: 'Your Information',
        ),
        SizedBox(
          height: 20.h,
        ),
        settingShow
            ? Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/settingsScreen'),
                    icon: Icon(
                      Icons.settings,
                      color: blackColor,
                      size: 25.sp,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        SizedBox(
          height: 10.h,
        ),
        // this section for profile image
        Center(
          child:
              // this portion for profile image
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
                imageUrl: profileImg,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                imageBuilder: (context, imageProvider) {
                  return Container(
                    width: 78.w,
                    height: 78.h,
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(50.r),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fill)),
                  );
                },
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 50.h,
        ),
        // this section for name and id card fatherName
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    height: 100.h,
                    child: Image.network(
                      frontId,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: myStyle(
                            size: 12.sp,
                            color: greyColor,
                            weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        namE,
                        style: myStyle(size: 16.sp, weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        fatherName,
                        style: myStyle(
                            size: 12.sp,
                            color: greyColor,
                            weight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Mashrafe Bin Mortaza',
                        style: myStyle(size: 16.sp, weight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              // this container for personal information
              Container(
                padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
                width: double.maxFinite,
                height: 40.h,
                color: lgreyColor,
                child: Text(
                  personalDetails,
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              // this is first section for gender and mobile number
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    gender,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 105.w,
                  ),
                  Text(
                    'Mobile Number',
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                ],
              ),

              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      genDer,
                      style: myStyle(size: 16.sp, weight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    mobileNumber,
                    style: myStyle(size: 16.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              // this section for second information like cccupations and NID number
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    occupation,
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'NID Number',
                    style: myStyle(
                        size: 12.sp, color: greyColor, weight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 90.w,
                    child: Text(
                      occupation,
                      style: myStyle(size: 16.sp, weight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  Text(
                    nidNumber,
                    style: myStyle(size: 16.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              // this section for address
              SizedBox(
                height: 18.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
                width: double.maxFinite,
                height: 40.h,
                color: lgreyColor,
                child: Text(
                  'Address',
                  style: myStyle(
                      size: 14.sp,
                      color: darkgreyColor,
                      weight: FontWeight.w500),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10.h),
                width: double.maxFinite,
                height: 80.h,
                child: Text(
                  address,
                  style: myStyle(size: 16.sp, weight: FontWeight.w500),
                ),
              ),

              settingShow
                  ? const SizedBox.shrink()
                  : Center(child: CustomButton(onTap: () {
                      sC.saveUserData();
                      Navigator.pushNamed(context, '/sixthInfoScreen');
                    }))
            ],
          ),
        ),
      ]),
    );
  }
}

import '../../../../consts/consts.dart';
import '../../../../core/controller/signup_controller.dart';
import '../../custom_profile_screen.dart';

class FifthInfoScreen extends StatelessWidget {
  const FifthInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sC = Provider.of<SignupController>(context);
    return CustomProfileScreen(
      profileImg: sC.profileImgController.text,
      frontId: sC.frontIdImgController.text,
      namE: sC.nameController.text,
      fatherName: sC.fatherNameController.text,
      genDer: sC.genderController.text,
      mobileNumber: sC.idNumberController.text,
      occupation: sC.occupationController.text,
      nidNumber: sC.idNumberController.text,
      address: sC.presentAddressController.text,
      settingShow: false,
    );
  }
}




// Scaffold(
//       body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         const CustomAppbar(
//           title: 'Your Information',
//         ),
//         SizedBox(
//           height: 42.h,
//         ),
//         Center(
//           child:
//               // this portion for profile image
//               Stack(children: [
//             Image.asset(
//               icProfileCircle,
//               width: 97,
//               height: 97.h,
//             ),
//             Positioned(
//               top: 8.h,
//               left: 2.w,
//               child: CachedNetworkImage(
//                 imageUrl: sC.profileImgController.text,
//                 placeholder: (context, url) =>
//                     const Center(child: CircularProgressIndicator()),
//                 imageBuilder: (context, imageProvider) {
//                   return Container(
//                     width: 78.w,
//                     height: 78.h,
//                     decoration: BoxDecoration(
//                         color: greyColor,
//                         borderRadius: BorderRadius.circular(50.r),
//                         image: DecorationImage(
//                             image: imageProvider, fit: BoxFit.fill)),
//                   );
//                 },
//               ),
//             ),
//           ]),
//         ),
//         SizedBox(
//           height: 61.h,
//         ),
//         Padding(
//           padding: EdgeInsets.only(left: 15.w, right: 15.w),
//           child: Column(
//             children: [
//               // this portion for id card picture, name and father name
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: 150.w,
//                     height: 100.h,
//                     child: Image.network(
//                       sC.frontIdImgController.text,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5.w,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         name,
//                         style: myStyle(
//                             size: 12.sp,
//                             color: greyColor,
//                             weight: FontWeight.w500),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       SizedBox(
//                         width: 180.w,
//                         child: Text(
//                           sC.nameController.text,
//                           style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 11.h,
//                       ),
//                       SizedBox(
//                         width: 180.w,
//                         child: Text(
//                           fatherName,
//                           style: myStyle(
//                               size: 12.sp,
//                               color: greyColor,
//                               weight: FontWeight.w500),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       Text(
//                         sC.fatherNameController.text,
//                         style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),

//               // this portion for persional details
//               Container(
//                 padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
//                 width: double.maxFinite,
//                 height: 40.h,
//                 color: lgreyColor,
//                 child: Text(
//                   personalDetails,
//                   style: myStyle(
//                       size: 14.sp,
//                       color: darkgreyColor,
//                       weight: FontWeight.w500),
//                 ),
//               ),
//               SizedBox(
//                 height: 15.h,
//               ),
//               // this is first section for gender and mobile number
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 30.w,
//                   ),
//                   Text(
//                     gender,
//                     style: myStyle(
//                         size: 12.sp, color: greyColor, weight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 121.w,
//                   ),
//                   Text(
//                     mobileNumber,
//                     style: myStyle(
//                         size: 12.sp, color: greyColor, weight: FontWeight.w500),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 height: 5.h,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 30.w,
//                   ),
//                   SizedBox(
//                     width: 60.w,
//                     child: Text(
//                       sC.genderController.text,
//                       style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 100.w,
//                   ),
//                   Text(
//                     '01855556252',
//                     style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               // this section for second information like cccupations and NID number
//               SizedBox(
//                 height: 15.h,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 30.w,
//                   ),
//                   Text(
//                     occupation,
//                     style: myStyle(
//                         size: 12.sp, color: greyColor, weight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 100.w,
//                   ),
//                   Text(
//                     nidNumber,
//                     style: myStyle(
//                         size: 12.sp, color: greyColor, weight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 5.h,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 30.w,
//                   ),
//                   SizedBox(
//                     width: 90.w,
//                     child: Text(
//                       sC.occupationController.text,
//                       style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 70.w,
//                   ),
//                   Text(
//                     sC.idNumberController.text,
//                     style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               // this section for address
//               SizedBox(
//                 height: 18.h,
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 20.w),
//                 width: double.maxFinite,
//                 height: 40.h,
//                 color: lgreyColor,
//                 child: Text(
//                   'Address',
//                   style: myStyle(
//                       size: 14.sp,
//                       color: darkgreyColor,
//                       weight: FontWeight.w500),
//                 ),
//               ),

//               Container(
//                 padding: EdgeInsets.all(10.h),
//                 width: double.maxFinite,
//                 height: 80.h,
//                 child: Text(
//                   sC.presentAddressController.text,
//                   style: myStyle(size: 16.sp, weight: FontWeight.w500),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const Spacer(),
//         Center(child: CustomButton(onTap: () {
//           sC.saveUserData();
//           Navigator.pushNamed(context, '/sixthInfoScreen');
//         })),
//         SizedBox(
//           height: 50.h,
//         ),
//       ]),
//     );
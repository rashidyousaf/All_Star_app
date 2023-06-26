import 'dart:developer';

import 'package:all_star/consts/consts.dart';
import 'package:all_star/core/controller/update_document_controller.dart';
import 'package:all_star/core/service/firestore_service.dart';
import 'package:all_star/ui/widgets/custom_button.dart';

class UploadDocumentScreen extends StatefulWidget {
  const UploadDocumentScreen({super.key});

  @override
  State<UploadDocumentScreen> createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  final List<String> _selectedChoices =
      []; // List to keep track of selected choices

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<UpdateDocumentController>(context);
    FirestoreService fS = FirestoreService();
    log('values:$_selectedChoices');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              size: 30.sp,
            ),
          ),
        ),
        // this section for provide information
        Text(
          'Provide Information',
          style:
              myStyle(size: 24.sp, weight: FontWeight.w600, color: nblueColor),
        ),
        SizedBox(
          height: 12.h,
        ),
        // this section for we subtitle or text like we strongly give full freedom .....
        SizedBox(
          width: 270.w,
          child: Text(
            weStronglyGive,
            textAlign: TextAlign.center,
            style: myStyle(size: 14.sp, weight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        // this section for container and textfield
        Container(
          width: 342.w,
          height: 142.h,
          padding:
              EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h, bottom: 5.h),
          decoration: BoxDecoration(
              border: Border.all(width: 2.w, color: greyColor),
              borderRadius: BorderRadius.circular(30.r)),
          child: TextField(
            controller: controller.controller,
            maxLines: 10,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: writerAboutYouAndYourEducation,
                hintStyle: myStyle(
                  size: 12.sp,
                  weight: FontWeight.w300,
                )),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Text(
          '$likes, $interests',
          style:
              myStyle(size: 24.sp, weight: FontWeight.w600, color: nblueColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          shareYourLike,
          textAlign: TextAlign.center,
          style:
              myStyle(size: 14.sp, weight: FontWeight.w500, color: blueColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        // this section for choice chips
        SizedBox(
          height: 310.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              spacing: 8.0,
              children: choices.map((choice) {
                final bool isSelected =
                    controller.selectedChoices.contains(choice['value']);
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: ChoiceChip(
                    label: SizedBox(
                      width: 110.w,
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            choice['icon'],
                            color: isSelected ? redColor : nblueColor,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            choice['value'],
                            style: myStyle(
                                size: 12.sp,
                                color: nblueColor,
                                weight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (selected) {
                      if (selected) {
                        controller.addSelectedChoice(choice['value']);
                      } else {
                        controller.removeSelectedChoice(choice['value']);
                      }
                    },
                    selectedColor: Colors.transparent,
                    labelStyle: const TextStyle(color: nblueColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      side: BorderSide(
                        color: isSelected ? redColor : Colors.transparent,
                        width: 2.w,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(
            width: 300.w,
            child: CustomButton(
              onTap: () {
                controller.updateUserInfo(fS, context);
              },
            ))
      ]),
    );
  }
}

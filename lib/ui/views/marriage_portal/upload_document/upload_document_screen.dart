import 'dart:developer';

import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDocumentScreen extends StatefulWidget {
  const UploadDocumentScreen({super.key});

  @override
  State<UploadDocumentScreen> createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  final List<String> _selectedChoices =
      []; // List to keep track of selected choices

  final List<Map<String, dynamic>> _choices = [
    {'value': photography, 'icon': Icons.camera_alt_outlined},
    {'value': cooking, 'icon': Icons.soup_kitchen},
    {'value': videoGames, 'icon': Icons.sports_esports_outlined},
    {'value': music, 'icon': Icons.music_video_outlined},
    {'value': travelling, 'icon': Icons.landscape_rounded},
    {'value': shopping, 'icon': Icons.shopping_bag_outlined},
    {'value': speeches, 'icon': Icons.mic},
    {'value': artCrafts, 'icon': Icons.color_lens},
    {'value': swimming, 'icon': Icons.pool_rounded},
    {'value': drinking, 'icon': Icons.wine_bar},
  ]; // List of available choices

  @override
  Widget build(BuildContext context) {
    log('values:$_selectedChoices');
    return Scaffold(
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
        Text(
          'Provide Information',
          style:
              myStyle(size: 24.sp, weight: FontWeight.w600, color: nblueColor),
        ),
        SizedBox(
          height: 12.h,
        ),
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
        Container(
          width: 342.w,
          height: 142.h,
          decoration: BoxDecoration(
              border: Border.all(width: 2.w, color: greyColor),
              borderRadius: BorderRadius.circular(30.r)),
          child: const Center(child: Text('Write about you and your!')),
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
        SizedBox(
          height: 310.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              spacing: 8.0,
              children: _choices.map((choice) {
                final bool isSelected =
                    _selectedChoices.contains(choice['value']);
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
                      setState(() {
                        if (selected) {
                          _selectedChoices.add(choice['value']);
                        } else {
                          _selectedChoices.remove(choice['value']);
                        }
                      });
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
              onTap: () => Navigator.pushNamed(context, '/bottomNavScreen'),
            ))
      ]),
    );
  }
}

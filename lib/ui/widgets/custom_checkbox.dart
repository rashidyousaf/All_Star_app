import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';

enum Gender { male, female, other }

class CustomCheckbox extends StatefulWidget {
  final Gender? value;
  final ValueChanged<Gender?> onChanged;

  const CustomCheckbox({
    super.key,
    this.value,
    required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  Gender? _value;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: greyColor,
          value: Gender.male,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              widget.onChanged(_value);
            });
          },
        ),
        Text(
          'Male',
          style: myStyle(size: 14.sp, weight: FontWeight.w500),
        ),
        SizedBox(
          width: 20.w,
        ),
        Radio(
          activeColor: greyColor,
          value: Gender.female,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              widget.onChanged(_value);
            });
          },
        ),
        Text(
          'Female',
          style: myStyle(size: 14.sp, weight: FontWeight.w500),
        ),
        SizedBox(
          width: 20.w,
        ),
        Radio(
          activeColor: greyColor,
          value: Gender.other,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              widget.onChanged(_value);
            });
          },
        ),
        Text(
          'Others',
          style: myStyle(size: 14.sp, weight: FontWeight.w500),
        ),
      ],
    );
  }
}


















// class CustomCheckbox extends StatefulWidget {
//   final bool value;
//   final ValueChanged<String?> onChanged;
//   final String checkedValue;
//   final String title;
//   const CustomCheckbox(
//       {super.key,
//       this.value = false,
//       required this.onChanged,
//       required this.checkedValue,
//       required this.title});

//   @override
//   // ignore: library_private_types_in_public_api
//   _CustomCheckboxState createState() => _CustomCheckboxState();
// }

// class _CustomCheckboxState extends State<CustomCheckbox> {
//   bool _value = false;

//   @override
//   void initState() {
//     _value = widget.value;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           _value = !_value;
//           widget.onChanged(_value ? widget.checkedValue : null);
//         });
//       },
//       child: Row(
//         children: [
//           Container(
//             width: 24.w,
//             height: 24.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12.r),
//               border: Border.all(
//                 color: _value ? Colors.blue : Colors.grey,
//                 width: 2.w,
//               ),
//               color: _value ? Colors.blue : Colors.transparent,
//             ),
//             child: _value
//                 ? Icon(
//                     Icons.check,
//                     color: whiteColor,
//                     size: 16.sp,
//                   )
//                 : null,
//           ),
//           SizedBox(
//             width: 10.w,
//           ),
//           Text(
//             widget.title,
//             style: myStyle(size: 14.sp, weight: FontWeight.w500),
//           )
//         ],
//       ),
//     );
//   }
// }

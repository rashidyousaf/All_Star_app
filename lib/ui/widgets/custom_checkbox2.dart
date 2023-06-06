import 'dart:developer';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';

enum Gender2 { service, business, housewife, student, other }

// ignore: must_be_immutable
class CustomCheckbox2 extends StatefulWidget {
  final Gender2? value;
  TextEditingController controller = TextEditingController();
  // final ValueChanged<Gender2?> onChanged;

  CustomCheckbox2({
    super.key,
    this.value,
    required this.controller,
    // required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckbox2State createState() => _CustomCheckbox2State();
}

class _CustomCheckbox2State extends State<CustomCheckbox2> {
  Gender2? _value;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              activeColor: greyColor,
              value: Gender2.service,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  widget.controller.text = 'Service';
                  log(widget.controller.text.toString());
                  _value = value;
                  // widget.onChanged(_value);
                });
              },
            ),
            Text(
              'Service',
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
            SizedBox(
              width: 5.w,
            ),
            Radio(
              activeColor: greyColor,
              value: Gender2.business,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  widget.controller.text = 'Business';
                  _value = value;
                  // widget.onChanged(_value);
                });
              },
            ),
            Text(
              'Business',
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
            SizedBox(
              width: 5.w,
            ),
            Radio(
              activeColor: greyColor,
              value: Gender2.housewife,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  widget.controller.text = 'House Wife';
                  _value = value;
                  // widget.onChanged(_value);
                });
              },
            ),
            Text(
              'Housewife',
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              activeColor: greyColor,
              value: Gender2.student,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  widget.controller.text = 'Student';
                  _value = value;
                  // widget.onChanged(_value);
                });
              },
            ),
            Text(
              'Student',
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
            SizedBox(
              width: 5.w,
            ),
            Radio(
              activeColor: greyColor,
              value: Gender2.other,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  widget.controller.text = 'Others';
                  _value = value;
                  // widget.onChanged(_value);
                });
              },
            ),
            Text(
              'Others',
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}

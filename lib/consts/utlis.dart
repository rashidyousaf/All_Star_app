import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'consts.dart';

class Utils {
  void toastMessage(String msg, {bgColor = redColor}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: bgColor,
      textColor: whiteColor,
      fontSize: 16.sp,
    );
  }

  progressIndecator({Color color = greenColor}) {
    CircularProgressIndicator(
      color: color,
    );
  }

  // for getting formatted time from millisecondsSinceEpochs String
  static String getFormattedTime(
      {required BuildContext context, required String time}) {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(time));
    return TimeOfDay.fromDateTime(date).format(context);
  }
}

import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lgreyColor,
      body: Column(

          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25.sp,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showMenu<String>(
                      context: context,
                      position: RelativeRect.fromLTRB(50.w, 0.h, 0, 0),
                      items: <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'view',
                          child: Text('View Profile'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'delete',
                          child: Text('Delete Chat'),
                        ),
                      ],
                      elevation: 8.0,
                    ).then((value) {
                      // Handle selected menu item
                      if (value == 'view') {
                        Navigator.pushNamed(context, '/marriageProfileScreen');
                      } else if (value == 'delete') {}
                    });
                  },
                  icon: Icon(
                    Icons.more_vert,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 96.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Image.asset(
                icPerson,
                width: 24.w,
                height: 31.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              belleBenson,
              style: myStyle(
                  size: 18.sp, weight: FontWeight.w600, color: nblueColor),
            ),
          ]),
    );
  }
}

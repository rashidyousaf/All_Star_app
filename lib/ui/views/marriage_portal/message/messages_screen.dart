import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_messages_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lgreyColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20.h,
        ),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            size: 25.sp,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    icChat2,
                    width: 41.w,
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Messages',
                    style: myStyle(
                        size: 18.sp,
                        weight: FontWeight.w600,
                        color: nblueColor),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/chatScreen'),
                  child: const CustomMessagesWidget()),
              SizedBox(
                height: 8.h,
              ),
              const CustomMessagesWidget(),
              SizedBox(
                height: 8.h,
              ),
              const CustomMessagesWidget(),
              SizedBox(
                height: 8.h,
              ),
              const CustomMessagesWidget(),
              SizedBox(
                height: 8.h,
              ),
              const CustomMessagesWidget(),
              SizedBox(
                height: 8.h,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatSplashScreen extends StatelessWidget {
  const ChatSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 400.h,
            child: Image.asset(
              icCouple2,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  congrates,
                  style: myStyle(
                      size: 45.sp, weight: FontWeight.w600, color: nblueColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'It’s a Match!',
                  textAlign: TextAlign.center,
                  style: myStyle(
                      size: 16.sp, weight: FontWeight.w500, color: nblueColor),
                ),
                Text(
                  'Belle & You both liked each other',
                  textAlign: TextAlign.center,
                  style: myStyle(
                      size: 16.sp, weight: FontWeight.w500, color: nblueColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  icChat,
                  width: 29.w,
                  height: 25.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/chatScreen'),
                  child: Text(
                    startConversation,
                    textAlign: TextAlign.center,
                    style: myStyle(
                        size: 18.sp, weight: FontWeight.w600, color: redColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

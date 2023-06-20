import 'package:all_star/consts/consts.dart';
import 'package:all_star/ui/widgets/custom_button.dart';

class MarriageSplashScreen extends StatelessWidget {
  const MarriageSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          SizedBox(
            width: 250.w,
            child: Text(
              findYourBestMatch,
              textAlign: TextAlign.center,
              style: myStyle(
                  size: 45.sp, weight: FontWeight.w700, color: nblueColor),
            ),
          ),
          Image.asset(
            icCouple,
            width: 400.w,
            height: 400.h,
          ),
          const Spacer(),
          CustomButton(
            onTap: () => Navigator.pushNamed(context, '/uploadDocumentScreen'),
            title: proceed,
          ),
          SizedBox(
            height: 36.h,
          ),
        ],
      ),
    );
  }
}

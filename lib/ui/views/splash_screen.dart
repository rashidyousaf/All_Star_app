import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/views/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            icLogo,
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            appName,
            style: TextStyle(
                color: redColor, fontSize: 40.sp, fontWeight: FontWeight.bold),
          )
          //
          ,
          SizedBox(
            height: 150.h,
          ),
          const Center(
            child: CircularProgressIndicator(color: redColor),
          )
        ]),
      ),
    );
  }
}

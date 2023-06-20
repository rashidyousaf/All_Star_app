import '../../../consts/consts.dart';

// ignore: must_be_immutable
class CustomSettingWidget extends StatelessWidget {
  CustomSettingWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final String title;
  final String icon;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 16.w,
            height: 16.h,
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            title,
            style: myStyle(size: 16.sp, weight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

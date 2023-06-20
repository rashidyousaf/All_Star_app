import '../../consts/consts.dart';

// ignore: must_be_immutable
class AuthButton extends StatelessWidget {
  AuthButton(
      {super.key,
      this.bgColor = greenColor,
      this.textColor = whiteColor,
      required this.onTap,
      required this.title,
      this.loading = false});
  final Color bgColor;
  final Color textColor;
  final String title;
  VoidCallback onTap;
  bool loading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.only(left: 28.w, right: 22.w),
          width: 343.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(width: 1.w, color: greenColor),
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: whiteColor,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: myStyle(size: 16.sp, color: textColor),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 28.sp,
                      color: textColor,
                    )
                  ],
                )),
    );
  }
}

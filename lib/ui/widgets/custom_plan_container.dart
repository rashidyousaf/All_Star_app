import '../../consts/consts.dart';

// ignore: must_be_immutable
class CustomPlanContainer extends StatelessWidget {
  CustomPlanContainer(
      {super.key,
      required this.icon,
      required this.title,
      required this.price,
      required this.onTap});
  final String icon;
  final String title;
  final String price;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 336.w,
        height: 88.h,
        decoration: BoxDecoration(
          border: Border.all(width: 1.w, color: greenColor),
          borderRadius: BorderRadius.circular(60.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 28.w,
            ),
            SizedBox(
              width: 33.w,
              height: 32.h,
              child: Image.asset(
                icon,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 17.w,
            ),
            SizedBox(
              width: 110.w,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: myStyle(
                    color: nblueColor, size: 20.sp, weight: FontWeight.w600),
              ),
            ),
            SizedBox(
              width: 75.w,
            ),
            Text(
              price,
              textAlign: TextAlign.center,
              style: myStyle(
                  color: redColor, size: 18.sp, weight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

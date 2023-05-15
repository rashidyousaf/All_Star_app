import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 95.h,
            ),
            Text(
              payment,
              textAlign: TextAlign.center,
              style: myStyle(size: 24.sp, weight: FontWeight.w600),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              completeYourPayment,
              textAlign: TextAlign.center,
              style: myStyle(size: 14.sp, weight: FontWeight.w500),
            ),
            SizedBox(
              height: 44.h,
            ),
            Text(
              savedPaymentOptions,
              textAlign: TextAlign.center,
              style: myStyle(size: 18.sp, weight: FontWeight.w600),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hdfcCreditCard,
                      textAlign: TextAlign.center,
                      style: myStyle(size: 16.sp, weight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '**** ****',
                      textAlign: TextAlign.center,
                      style: myStyle(size: 12.sp, weight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 200.h,
            ),
            Center(
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: greenColor,
                      size: 30.sp,
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/addCardScreen'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    addNewPaymentOption,
                    textAlign: TextAlign.center,
                    style: myStyle(size: 18.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              onTap: () {},
              title: 'Pay',
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}

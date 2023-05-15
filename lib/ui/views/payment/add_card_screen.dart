import 'package:all_star/consts/consts.dart';
import 'package:all_star/consts/strings.dart';
import 'package:all_star/ui/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_payment_TextField.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

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
            const CustomPaymentTextfield(
              title: cardHolderName,
              hint: 'An S. Lopes',
            ),
            SizedBox(
              height: 12.h,
            ),
            const CustomPaymentTextfield(
              hint: '00XX 23XXX 0000 XX',
              title: cardNumber,
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 155.w,
                  child: const CustomPaymentTextfield(
                    hint: 'MM/YY',
                    title: expiry,
                  ),
                ),
                SizedBox(
                  width: 155.w,
                  child: const CustomPaymentTextfield(
                    hint: '380',
                    title: cvv,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              onTap: () {},
              title: proceed,
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

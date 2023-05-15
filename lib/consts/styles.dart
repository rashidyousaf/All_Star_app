import 'package:all_star/consts/consts.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

TextStyle myStyle(
    {size, Color color = blackColor, FontWeight weight = FontWeight.w400}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: weight,
  );
}

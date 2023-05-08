import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseRow extends StatelessWidget {
  final String expenseName;

  final String expenseAmonut;

  const ExpenseRow({
    super.key,
    required this.expenseName,
    required this.expenseAmonut,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          expenseName,
          style: GoogleFonts.poppins(
              color: textDark,
              fontSize: getProportionateMobileHeight(14),
              fontWeight: FontWeight.w400,
              height: getProportionateMobileHeight(1.5)),
        ),
        Text(
          '\$$expenseAmonut',
          style: GoogleFonts.poppins(
              color: textDark,
              fontSize: getProportionateMobileHeight(14),
              fontWeight: FontWeight.w400,
              height: getProportionateMobileHeight(1.5)),
        ),
      ],
    );
  }
}

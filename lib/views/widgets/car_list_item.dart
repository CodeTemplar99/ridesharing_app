import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

class CarListItem extends StatelessWidget {
  final bool isSelected;

  final String carName;

  final String passengerCount;

  final String bookingPrice;

  const CarListItem({
    super.key,
    required this.isSelected,
    required this.carName,
    required this.passengerCount,
    required this.bookingPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? primaryColor : Colors.transparent,
      height: getProportionateMobileHeight(60),
      // width: MediaQuery.of(context).size.width,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateMobileHeight(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carName,
                  style: GoogleFonts.poppins(
                      color: isSelected ? Colors.white : textDark,
                      fontSize: getProportionateMobileHeight(14),
                      fontWeight: FontWeight.w600),
                ),
                VerticalSpacingMobile(
                    heightValue: getProportionateMobileHeight(6)),
                Text(
                  passengerCount,
                  style: GoogleFonts.poppins(
                      color: isSelected ? Colors.white : textDark,
                      fontSize: getProportionateMobileHeight(12),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Text(
            '\$$bookingPrice',
            style: GoogleFonts.poppins(
                color: isSelected ? Colors.white : textDark,
                fontSize: getProportionateMobileHeight(14),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/dimension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StickyCardOptions extends StatelessWidget {
  final String iconName;

  final String optionName;
  
  final double cardHeight;

  const StickyCardOptions({
    super.key,
    required this.iconName,
    required this.optionName, required this.cardHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: getProportionateMobileHeight(cardHeight),
      child: Row(
        children: [
          SvgPicture.asset('$svgIconPath/$iconName.svg'),
          SizedBox(
            width: getProportionateMobileHeight(10),
          ),
          Text(
            optionName,
            style: GoogleFonts.poppins(
                color: textLightGray,
                fontSize: getProportionateMobileHeight(14),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/dimension.dart';
import 'package:flutter_application_1/views/widgets/car_list_item.dart';
import 'package:flutter_application_1/views/widgets/expense_row.dart';
import 'package:flutter_application_1/views/widgets/sticky_card_option.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TripRatingScreen extends StatefulWidget {
  const TripRatingScreen({super.key});

  @override
  State<TripRatingScreen> createState() => _TripRatingScreenState();
}

class _TripRatingScreenState extends State<TripRatingScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: primaryColor,
              ),
              Positioned(
                bottom: 0,
                child: Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: SizedBox(
                      height: getProportionateMobileHeight(100),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: getProportionateMobileHeight(60),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateMobileHeight(20)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: SvgPicture.asset(
                                        '$svgIconPath/close.svg')),
                                SizedBox(
                                  width: getProportionateMobileHeight(68),
                                ),
                                Text(
                                  'Rate Your Trip',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:
                                          getProportionateMobileHeight(18),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: getProportionateMobileHeight(690),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(
                            getProportionateMobileHeight(30)),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getProportionateMobileHeight(330),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateMobileHeight(25)),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getProportionateMobileHeight(30),
                                    ),
                                    topRight: Radius.circular(
                                      getProportionateMobileHeight(30),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    VerticalSpacingMobile(
                                        heightValue:
                                            getProportionateMobileHeight(25)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                '$pngImagePath/profile1.png'),
                                            SizedBox(
                                              width:
                                                  getProportionateMobileHeight(
                                                      10),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Ben Stokes',
                                                  style: GoogleFonts.poppins(
                                                      color: accentColor,
                                                      fontSize:
                                                          getProportionateMobileHeight(
                                                              16),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                        '$svgIconPath/star.svg'),
                                                    SizedBox(
                                                      width:
                                                          getProportionateMobileHeight(
                                                              5),
                                                    ),
                                                    Text(
                                                      '4.9',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        color: const Color(
                                                            0xFFC8C7CC),
                                                        fontSize:
                                                            getProportionateMobileHeight(
                                                                12),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            getProportionateMobileHeight(
                                                                1.3),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SvgPicture.asset(
                                            '$svgIconPath/chat.svg'),
                                      ],
                                    ),
                                    VerticalSpacingMobile(
                                        heightValue:
                                            getProportionateMobileHeight(20)),
                                    Text(
                                      'How is your trip?',
                                      style: GoogleFonts.poppins(
                                          color: accentColor,
                                          fontSize:
                                              getProportionateMobileHeight(18),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    VerticalSpacingMobile(
                                        heightValue:
                                            getProportionateMobileHeight(20)),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateMobileHeight(45)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ...List.generate(
                                            4,
                                            (index) => SvgPicture.asset(
                                                '$svgIconPath/big_star.svg'),
                                          ),
                                          SvgPicture.asset(
                                            '$svgIconPath/big_star_grey.svg',
                                          ),
                                        ],
                                      ),
                                    ),
                                    VerticalSpacingMobile(
                                        heightValue:
                                            getProportionateMobileHeight(20)),
                                    Container(
                                      height: getProportionateMobileHeight(82),
                                      width:
                                          getProportionateMobileHeight(330.75),
                                      padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateMobileHeight(10),
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFAFAFA),
                                          borderRadius:
                                              BorderRadius.circular(18.16),
                                          border: Border.all(
                                              color: const Color(0xFFEDEDED))),
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF222B45),
                                          fontSize:
                                              getProportionateMobileHeight(14),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        keyboardType: TextInputType.text,
                                        maxLines: 30,
                                        decoration: InputDecoration(
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          labelStyle: GoogleFonts.poppins(
                                            color: const Color(0xFF656565),
                                            fontSize:
                                                getProportionateMobileHeight(
                                                    14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFFF9FAFB),
                                          hintText: 'Write your feedback',
                                        ),
                                      ),
                                    ),
                                    VerticalSpacingMobile(
                                        heightValue:
                                            getProportionateMobileHeight(25)),
                                    Row(
                                      children: [
                                        Text(
                                          'Trip Detail',
                                          style: GoogleFonts.poppins(
                                              color: accentColor,
                                              fontSize:
                                                  getProportionateMobileHeight(
                                                      18),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: getProportionateMobileHeight(130),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateMobileHeight(25),
                                    vertical: getProportionateMobileHeight(14)),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        const StickyCardOptions(
                                          iconName: 'circle_accent_md',
                                          optionName: 'Skate Park',
                                          cardHeight: 43,
                                        ),
                                        Divider(
                                          color: const Color(0xFFEDEDED),
                                          thickness:
                                              getProportionateMobileHeight(1),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  getProportionateMobileHeight(
                                                      2)),
                                          child: const StickyCardOptions(
                                            iconName: 'pin_md',
                                            optionName: ' Home',
                                            cardHeight: 43,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      left: getProportionateMobileHeight(9),
                                      top: getProportionateMobileHeight(33),
                                      child: SvgPicture.asset(
                                        '$svgIconPath/line.svg',
                                        height: 45,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: getProportionateMobileHeight(230),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(
                                      0.2,
                                    ), // Shadow color
                                    offset: const Offset(
                                        4, 0), // Offset of the shadow
                                    blurRadius: getProportionateMobileHeight(
                                      6,
                                    ), // Spread radius of the shadow
                                    spreadRadius:
                                        7, // Optional, controls the size of the shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  VerticalSpacingMobile(
                                      heightValue:
                                          getProportionateMobileHeight(10)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateMobileHeight(25)),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Payment Detail',
                                          style: GoogleFonts.poppins(
                                              color: accentColor,
                                              fontSize:
                                                  getProportionateMobileHeight(
                                                      18),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalSpacingMobile(
                                      heightValue:
                                          getProportionateMobileHeight(10)),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateMobileHeight(25)),
                                    child: Column(
                                      children: const [
                                        ExpenseRow(
                                          expenseName: 'Trip Expense',
                                          expenseAmonut: '9.00',
                                        ),
                                        ExpenseRow(
                                          expenseName: 'Discount Voucher',
                                          expenseAmonut: '1.00',
                                        ),
                                        ExpenseRow(
                                          expenseName: 'Total ',
                                          expenseAmonut: '8.00',
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalSpacingMobile(
                                      heightValue:
                                          getProportionateMobileHeight(15)),
                                  Container(
                                    width: getProportionateMobileHeight(303),
                                    height: getProportionateMobileHeight(64),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateMobileHeight(15)),
                                    decoration: BoxDecoration(
                                      color: accentColor,
                                      borderRadius: BorderRadius.circular(
                                        getProportionateMobileHeight(30),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Submit',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize:
                                                getProportionateMobileHeight(
                                                    16),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ]),
          ],
        ));
  }
}

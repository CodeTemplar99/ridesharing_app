import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/dimension.dart';
import 'package:flutter_application_1/views/trip_rating_screen.dart';
import 'package:flutter_application_1/views/widgets/car_list_item.dart';
import 'package:flutter_application_1/views/widgets/sticky_card_option.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseVehicleScreen extends StatefulWidget {
  const ChooseVehicleScreen({super.key});

  @override
  State<ChooseVehicleScreen> createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: getProportionateMobileHeight(20)),
            child: SvgPicture.asset('$svgIconPath/menu.svg'),
          ),
          leadingWidth: getProportionateMobileHeight(60),
          centerTitle: true,
          title: Image.asset('$pngIconPath/brand.png'),
          actions: [
            Image.asset('$pngImagePath/profile.png'),
            SizedBox(
              width: getProportionateMobileHeight(30),
            )
          ],
        ),
        body: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      '$pngImagePath/map.png',
                      height: 580,
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: 0,
                child: Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          height: getProportionateMobileHeight(100),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                getProportionateMobileHeight(3.4),
                                getProportionateMobileHeight(0)
                              ],
                              colors: const [
                                Color.fromRGBO(255, 255, 255, 0.7),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateMobileHeight(86),
                          width: getProportionateMobileHeight(302),
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateMobileHeight(15),
                              vertical: getProportionateMobileHeight(14)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                getProportionateMobileHeight(20)),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  const StickyCardOptions(
                                    iconName: 'circle_accent',
                                    optionName: 'Skate Park',
                                    cardHeight: 20,
                                  ),
                                  Divider(
                                    color: const Color(0xFFEDEDED),
                                    thickness: getProportionateMobileHeight(1),
                                  ),
                                  const StickyCardOptions(
                                    iconName: 'pin_small',
                                    optionName: ' Home',
                                    cardHeight: 20,
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                top: getProportionateMobileHeight(7),
                                child: Container(
                                  width: getProportionateMobileHeight(68),
                                  height: getProportionateMobileHeight(36),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(
                                      getProportionateMobileHeight(30),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          '$svgIconPath/plus_circle.svg'),
                                      SizedBox(
                                        width: getProportionateMobileHeight(5),
                                      ),
                                      Text(
                                        'Add',
                                        style: GoogleFonts.poppins(
                                            color: textLightGray,
                                            fontSize:
                                                getProportionateMobileHeight(
                                                    12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        VerticalSpacingMobile(
                          heightValue: getProportionateMobileHeight(65),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          height: getProportionateMobileHeight(160),
                          child: Align(
                            alignment: Alignment.center,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  '$pngImagePath/trail.png',
                                  height: getProportionateMobileHeight(130),
                                  width: getProportionateMobileHeight(200),
                                ),
                                Positioned(
                                  top: getProportionateMobileHeight(-12),
                                  right: getProportionateMobileHeight(2),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      SvgPicture.asset(
                                          '$svgIconPath/end_point.svg'),
                                      Positioned(
                                        top: getProportionateMobileHeight(-12),
                                        right: getProportionateMobileHeight(2),
                                        child: SvgPicture.asset(
                                            '$svgIconPath/pin.svg'),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: getProportionateMobileHeight(-6),
                                    left: getProportionateMobileHeight(2),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        SvgPicture.asset(
                                            '$svgIconPath/end_point.svg'),
                                        Positioned(
                                          bottom:
                                              getProportionateMobileHeight(12),
                                          left: getProportionateMobileHeight(2),
                                          child: SvgPicture.asset(
                                              '$svgIconPath/pin.svg'),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: getProportionateMobileHeight(350),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                            getProportionateMobileHeight(30)),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getProportionateMobileHeight(63),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateMobileHeight(20)),
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Choose your ride',
                                      style: GoogleFonts.poppins(
                                          color: textDark,
                                          fontSize:
                                              getProportionateMobileHeight(18),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      width: getProportionateMobileHeight(40),
                                      height: getProportionateMobileHeight(40),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            getProportionateMobileHeight(50)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                              0.2,
                                            ), // Shadow color
                                            offset: const Offset(
                                                0, 1), // Offset of the shadow
                                            blurRadius:
                                                getProportionateMobileHeight(
                                              6,
                                            ), // Spread radius of the shadow
                                            spreadRadius:
                                                7, // Optional, controls the size of the shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        '$pngIconPath/back.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: getProportionateMobileHeight(155),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: const [
                                      CarListItem(
                                        isSelected: false,
                                        carName: 'Toyota Camry',
                                        passengerCount: '2-3 person',
                                        bookingPrice: '7.00',
                                      ),
                                      CarListItem(
                                        isSelected: true,
                                        carName: 'Lexus R700',
                                        passengerCount: '2-3 person',
                                        bookingPrice: '9.00',
                                      ),
                                      CarListItem(
                                        isSelected: false,
                                        carName: 'Mercedes W90',
                                        passengerCount: '2-3 person',
                                        bookingPrice: '10.00',
                                      ),
                                      CarListItem(
                                        isSelected: false,
                                        carName: 'Toyota Camry',
                                        passengerCount: '2-3 person',
                                        bookingPrice: '7.00',
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: getProportionateMobileHeight(145),
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
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateMobileHeight(31)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Cash',
                                                    style: GoogleFonts.poppins(
                                                        color: textDark,
                                                        fontSize:
                                                            getProportionateMobileHeight(
                                                                14),
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        getProportionateMobileHeight(
                                                            5),
                                                  ),
                                                  SvgPicture.asset(
                                                      '$svgIconPath/arrow_down.svg')
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              getProportionateMobileHeight(119),
                                          height:
                                              getProportionateMobileHeight(36),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFEDEDED),
                                            borderRadius: BorderRadius.circular(
                                              getProportionateMobileHeight(30),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  '$svgIconPath/promo_badge.svg'),
                                              SizedBox(
                                                width:
                                                    getProportionateMobileHeight(
                                                        5),
                                              ),
                                              Text(
                                                'Promo code',
                                                style: GoogleFonts.poppins(
                                                    color: textLightGray,
                                                    fontSize:
                                                        getProportionateMobileHeight(
                                                            12),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalSpacingMobile(
                                      heightValue:
                                          getProportionateMobileHeight(15)),
                                  InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              const TripRatingScreen(),
                                        )),
                                    child: Container(
                                      width: getProportionateMobileHeight(303),
                                      height: getProportionateMobileHeight(64),
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateMobileHeight(20)),
                                      decoration: BoxDecoration(
                                        color: accentColor,
                                        borderRadius: BorderRadius.circular(
                                          getProportionateMobileHeight(30),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Book this car',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize:
                                                    getProportionateMobileHeight(
                                                        16),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width:
                                                getProportionateMobileHeight(5),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                '\$9.00',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize:
                                                        getProportionateMobileHeight(
                                                            16),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateMobileHeight(
                                                        10),
                                              ),
                                              Container(
                                                width:
                                                    getProportionateMobileHeight(
                                                        44),
                                                height:
                                                    getProportionateMobileHeight(
                                                        44),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getProportionateMobileHeight(
                                                              50)),
                                                ),
                                                child: Transform.rotate(
                                                  angle: 3.1,
                                                  child: Image.asset(
                                                    '$pngIconPath/back.png',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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

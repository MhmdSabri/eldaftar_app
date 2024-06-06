import 'package:eldaftar_app/Home_Screen/Location_The_Shop.dart';
import 'package:eldaftar_app/Home_Screen/The_Branch_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'All_Shops.dart';

class TheShopScreen extends StatelessWidget {
  const TheShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const AllShopsScreen()));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 5.h, left: 10.w, bottom: 5.h),
            child: Column(
              children: [
                Container(
                  width: 45.w,
                  height: 35.h,
                  padding: EdgeInsets.all(6.w),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1EBF8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.w)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 20.w,
                        height: 24.h,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF6E34B8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Shop',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 175.h,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          "Images/HomePage/the shop/Rectangle 39 (8).png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.r),
                        topRight: Radius.circular(6.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Store data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Carrefour Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("Images/HomePage/the shop/flag.svg"),
                    SizedBox(width: 10.w),
                    Text(
                      'Four branch',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xff6E34B8),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SvgPicture.asset("Images/HomePage/the shop/ICONcall.svg"),
                SizedBox(width: 10.w),
                Text(
                  '01010512799',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SvgPicture.asset("Images/HomePage/the shop/location.svg"),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LocationTheShop()));
                  },
                  child: Text(
                    'Riyadh, Saudi Arabia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 13.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Divider(
              color: const Color(0xFFEBEBEC),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Invoices',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 360.h,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "Images/HomePage/the shop/flag.svg"),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const TheBranchScreen()));
                                    },
                                    child: Text(
                                      'Makkah branch',
                                      style: TextStyle(
                                        color: const Color(0xFF5A5D61),
                                        fontSize: 12.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "Images/HomePage/the shop/location.svg"),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Riyadh, Saudi Arabia',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "Images/HomePage/the shop/ICONcall.svg"),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '01010512799',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "Images/HomePage/the shop/C-card.svg"),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '5000 SAR ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "Images/HomePage/the shop/calendar.svg"),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '29/11/2023',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'The total amount = ',
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '500',
                                    style: TextStyle(
                                      color: const Color(0xFF6E34B8),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'SAR',
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 11.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 135.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/HomePage/the shop/unsplash_xkArbdUcUeE.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.w)),
                              ),
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Store ratings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                    SizedBox(width: 3.w),
                    SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                    SizedBox(width: 3.w),
                    SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                    SizedBox(width: 3.w),
                    SvgPicture.asset("Images/HomePage/Stores/staroutline.svg"),
                    SizedBox(width: 3.w),
                    SvgPicture.asset("Images/HomePage/Stores/staroutline.svg"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 105.h,
                  padding: EdgeInsets.all(12.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF6E34B8)),
                      borderRadius: BorderRadius.circular(4.w),
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                        SizedBox(width: 3.w),
                        SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                        SizedBox(width: 3.w),
                        SvgPicture.asset("Images/HomePage/Stores/starr.svg"),
                        SizedBox(width: 3.w),
                        SvgPicture.asset(
                            "Images/HomePage/Stores/staroutline.svg"),
                        SizedBox(width: 3.w),
                        SvgPicture.asset(
                            "Images/HomePage/Stores/staroutline.svg"),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed Elsherif',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              '"I love shopping at this store, great products and excellent customer service!"',
                              style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.3),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                )
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add a rating',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF6E34B8),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 7.w),
                const Icon(
                  Icons.add,
                  color: Color(0xFF6E34B8),
                  size: 25,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

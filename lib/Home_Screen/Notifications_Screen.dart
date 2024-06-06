import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Home.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
                    builder: (BuildContext context) => const HomeScreen()));
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
          'Notifications',
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
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33.w,
                                  top: 0,
                                  child: Container(
                                    width: 8.w,
                                    height: 8.h,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFF6E34B8),
                                      shape: OvalBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“Bill No. 12”',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            ', One week left until the end of the payment period for the Apple Store',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '04:10am',
                                style: TextStyle(
                                  color: const Color(0xFFC1C2C3),
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(children: [
              Container(
                width: double.infinity,
                height: 120.h,
                padding: EdgeInsets.all(8.w),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.w)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3FFF4328),
                      blurRadius: 0.1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 45.w,
                          height: 40.h,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 5.h,
                                child: Container(
                                  padding: EdgeInsets.all(8.w),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.w)),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 22.w,
                                          height: 22.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/notification/Bell.svg")
                                          //  Icon(
                                          //   Icons.notifications_none,
                                          //   color: const Color(0xFF6E34B8),
                                          //   size: 25,
                                          // ),
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 33.w,
                                top: 0,
                                child: Container(
                                  width: 8.w,
                                  height: 8.h,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF6E34B8),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 235.w,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Muhammad ',
                                      style: TextStyle(
                                        color: const Color(0xFF6E34B8),
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'asked to borrow from',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Ahmed ',
                                      style: TextStyle(
                                        color: const Color(0xFF6E34B8),
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'an amount of ',
                                      style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
                                    ),
                                    TextSpan(
                                      text: '2000',
                                      style: TextStyle(
                                        color: const Color(0xFF6E34B8),
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' SAR',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 11.sp,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '04:10am',
                              style: TextStyle(
                                color: const Color(0xFFC1C2C3),
                                fontSize: 11.sp,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              // Navigator.pop(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (BuildContext context) =>
                              //             const LoginScreen()));
                            },
                            color: const Color(0xffF1EBF8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            textColor: Colors.white,
                            height: 42.h,
                            // minWidth: 165.w,
                            child: Text(
                              'Reject',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF6E34B8),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            color: const Color(0xFF6E34B8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            textColor: Colors.white,
                            height: 42.h,
                            // minWidth: 165.w,
                            child: Text(
                              'Confirm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33.w,
                                  top: 0,
                                  child: Container(
                                    width: 8.w,
                                    height: 8.h,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFF6E34B8),
                                      shape: OvalBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Reminder: ',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            'Payment is due, please settle as soon as possible.',
                                        style: TextStyle(
                                            color: const Color(0xFF12161C),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '04:10am',
                                style: TextStyle(
                                  color: const Color(0xFFC1C2C3),
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33.w,
                                  top: 0,
                                  child: Container(
                                    width: 8.w,
                                    height: 8.h,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFF6E34B8),
                                      shape: OvalBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“Bill No. 12”',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            ', One week left until the end of the payment period for the Apple Store',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '04:10am',
                                style: TextStyle(
                                  color: const Color(0xFFC1C2C3),
                                  fontSize: 11.sp,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“Bill No. 12”',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            ', One week left until the end of the payment period for the Apple Store',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    '18/04/2023',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  Text(
                                    '04:10am',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“32” ',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            'The Apple Store approved you to request payment from the Riyadh branch',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    '18/04/2023',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  Text(
                                    '11:53pm',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“32” ',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            'The Apple Store approved you to request payment from the Riyadh branch',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    '18/04/2023',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  Text(
                                    '11:53pm',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  padding: EdgeInsets.all(8.w),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 40.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 5.h,
                                  child: Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.w)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: SvgPicture.asset(
                                                "Images/HomePage/notification/Bell.svg")
                                            //  Icon(
                                            //   Icons.notifications_none,
                                            //   color: const Color(0xFF6E34B8),
                                            //   size: 25,
                                            // ),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 235.w,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '“32” ',
                                        style: TextStyle(
                                            color: const Color(0xFF6E34B8),
                                            fontSize: 11.sp,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.4),
                                      ),
                                      TextSpan(
                                        text:
                                            'The Apple Store approved you to request payment from the Riyadh branch',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    '18/04/2023',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  Text(
                                    '11:53pm',
                                    style: TextStyle(
                                      color: const Color(0xFFC1C2C3),
                                      fontSize: 11.sp,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

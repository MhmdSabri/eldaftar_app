import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Home_Screen/Shops_Screen.dart';
import 'Payment_Request_4.dart';

class NewRequestScreen extends StatelessWidget {
  const NewRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffF1EBF8),
          elevation: 2,
          shape: const OvalBorder(
            side: BorderSide(width: 1, color: Colors.white),
          ),
          child: Image.asset("Images/HomePage/Chat_Circle_Dots.png"),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                    builder: (BuildContext context) =>
                        const PaymentRequest4()));
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
          'Payment request',
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
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Stack(
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
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: SizedBox(
                        width: 27.w,
                        height: 27.h,
                        child: SvgPicture.asset(
                            "Images/NavBar/Payment request/new request/Shield Star.svg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Carrefour Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SvgPicture.asset(
                    "Images/NavBar/Payment request/new request/heart.svg")
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SvgPicture.asset("Images/HomePage/the shop/request num.svg"),
                SizedBox(width: 10.w),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Request number: ',
                        style: TextStyle(
                          color: const Color(0xFF5A5D61),
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '12',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SvgPicture.asset("Images/HomePage/the shop/flag.svg"),
                SizedBox(width: 10.w),
                Text(
                  'Riyadh branch',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
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
                SvgPicture.asset("Images/HomePage/the shop/calendar.svg"),
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
            SizedBox(height: 15.h),
            Row(
              children: [
                SvgPicture.asset(
                    "Images/NavBar/Payment request/new request/alarm.svg"),
                SizedBox(width: 10.w),
                Text(
                  '05:34 PM',
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
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Your request has been sent',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF6E34B8),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          insetPadding: EdgeInsets.all(10.r),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                          backgroundColor: const Color(0xffFFFFFF),
                          content: SizedBox(
                            height: 275.h,
                            width: 300.w,
                            child: Column(children: [
                              SizedBox(
                                height: 160.h,
                                width: 160.w,
                                child: Image.asset(
                                    "Images/NavBar/Payment request/new request/88932-refreshx.png"),
                              ),
                              SizedBox(height: 10.h),
                              Column(
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        'A payment request reminder has been sent',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                color: const Color(0xFF6E34B8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.w)),
                                textColor: Colors.white,
                                height: 42.h,
                                minWidth: 140.w,
                                child: Text(
                                  'OK',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                    );
                  },
                  color: const Color(0xFF6E34B8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.w)),
                  textColor: Colors.white,
                  height: 42.h,
                  minWidth: double.infinity,
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Send urgency',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 15.w),
                        SvgPicture.asset(
                            "Images/NavBar/Payment request/new request/notification.white.svg")
                      ]),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          insetPadding: EdgeInsets.all(12.r),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                          backgroundColor: const Color(0xffFFFFFF),
                          content: SizedBox(
                            height: 145.h,
                            width: 300.w,
                            child: Column(children: [
                              Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Are you sure to cancel the request?',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        'Your request to pay for this store will be deleted, please be careful in this step',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      color: const Color(0xffF1EBF8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.w)),
                                      textColor: Colors.white,
                                      height: 42.h,
                                      // minWidth: 165.w,
                                      child: Text(
                                        'Cancel',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        const ShopsScreen()));
                                      },
                                      color: const Color(0xFF6E34B8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.w)),
                                      textColor: Colors.white,
                                      height: 42.h,
                                      // minWidth: 165.w,
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Confirm',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 15.w),
                                            const Icon(
                                              Icons.delete_outline,
                                              size: 27,
                                              weight: sqrt1_2,
                                            )
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        );
                      },
                    );
                  },
                  color: const Color(0xffF1EBF8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.w)),
                  textColor: Colors.white,
                  height: 42.h,
                  minWidth: double.infinity,
                  child: Text(
                    'Cancel request',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6E34B8),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

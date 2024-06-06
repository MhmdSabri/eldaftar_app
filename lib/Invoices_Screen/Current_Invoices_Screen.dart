import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Invoices_Screen.dart';

class CurrentInvoicesScreen extends StatelessWidget {
  const CurrentInvoicesScreen({super.key});

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
                    builder: (BuildContext context) => const InvoicesScreen()));
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
          'Invoice',
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
          child: Column(
            children: [
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
                    'Carrefour Store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
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
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '12',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
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
                    'Makkah branch',
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
                  SvgPicture.asset("Images/HomePage/Invoices/d.message.svg"),
                  SizedBox(width: 8.w),
                  Text(
                    "Please don't be late in paying",
                    textAlign: TextAlign.center,
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
                  SvgPicture.asset("Images/HomePage/the shop/calendar.svg"),
                  SizedBox(width: 10.w),
                  Text(
                    '29/11/2023',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 12.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              // Divider(
              //   color: const Color(0xFFEBEBEC),
              //   height: 1.h,
              //   thickness: 1.r,
              //   indent: 3.w,
              //   endIndent: 3.w,
              // ),
              // SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    'Account invoice',

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
                            insetPadding: EdgeInsets.all(12.r),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.w, 7.h, 10.w, 10.h),
                            backgroundColor: const Color(0xffFFFFFF),
                            content: SizedBox(
                              height: 90.h,
                              width: 300.w,
                              child: Column(children: [
                                SizedBox(height: 10.h),
                                Wrap(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Do you want to confirm payment?",
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
                                            fontSize: 14.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.h),
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
                                                  builder: (BuildContext
                                                          context) =>
                                                      const InvoicesScreen()));
                                        },
                                        color: const Color(0xFF6E34B8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.w)),
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
                    child: Text(
                      'Pay the amount = 500 SAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

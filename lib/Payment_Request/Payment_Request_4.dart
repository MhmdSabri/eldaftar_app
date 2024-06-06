import 'dart:math';

import 'package:eldaftar_app/Payment_Request/New_Request.dart';
import 'package:eldaftar_app/Payment_Request/Payment_Request_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class PaymentRequest4 extends StatelessWidget {
  const PaymentRequest4({super.key});

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
                    builder: (BuildContext context) =>
                        const PaymentRequest3()));
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
                Wrap(
                  children: [
                    Text(
                      'Enter the verification code here',
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
            SizedBox(height: 10.h),
            OTPTextField(
              outlineBorderRadius: BorderSide.strokeAlignCenter,
              otpFieldStyle: OtpFieldStyle(
                borderColor: Colors.white,
                enabledBorderColor: const Color(0xFFA115A4).withOpacity(0.2),
                disabledBorderColor: Colors.black,
                focusBorderColor: const Color(0xFFA115A4),
              ),
              fieldStyle: FieldStyle.box,
              length: 5,
              width: double.infinity,
              fieldWidth: 50.w,
              spaceBetween: 20,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF303645),
              ),
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              onCompleted: (pin) {},
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '0:54',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF6E34B8),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10.w),
                const Icon(
                  Icons.rotate_left_outlined,
                  color: Color(0xFF6E34B8),
                ),
                SizedBox(width: 10.w),
                Text(
                  'Resend',
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
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const PaymentRequest3()));
                    },
                    color: const Color(0xffF1EBF8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w)),
                    textColor: Colors.white,
                    height: 42.h,
                    // minWidth: 165.w,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Color(0xFF6E34B8),
                            weight: sqrt1_2,
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Edit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF6E34B8),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const NewRequestScreen()));
                    },
                    color: const Color(0xFF6E34B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w)),
                    textColor: Colors.white,
                    height: 42.h,
                    // minWidth: 165.w,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Send',
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
                            Icons.arrow_forward_ios,
                            size: 15,
                            weight: sqrt1_2,
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Wrap(
                  children: [
                    Text(
                      'My previous requests',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 12.5.sp,
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
              children: [
                Container(
                  width: double.infinity,
                  height: 214.h,
                  // padding:
                  //     EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3FFF4328),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/star.outline.svg"),
                          Text(
                            'Makkah branch',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E34B8),
                            size: 15,
                            weight: sqrt1_2,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      color: const Color(0xFFEBEBEC),
                      height: 1.h,
                      thickness: 1.r,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Shield Check.svg"),
                          Text(
                            'Riyadh branch',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E34B8),
                            size: 15,
                            weight: sqrt1_2,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      color: const Color(0xFFEBEBEC),
                      height: 1.h,
                      thickness: 1.r,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Shield Warning.svg"),
                          Text(
                            'Makkah branch',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E34B8),
                            size: 15,
                            weight: sqrt1_2,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      color: const Color(0xFFEBEBEC),
                      height: 1.h,
                      thickness: 1.r,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/ex.svg"),
                          Text(
                            'Jazan branch',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E34B8),
                            size: 15,
                            weight: sqrt1_2,
                          )
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

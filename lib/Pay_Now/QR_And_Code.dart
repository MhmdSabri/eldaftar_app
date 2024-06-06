import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../NavBar/NavBar.dart';
import 'Confirm_Bill_Payment.dart';

class QRAndCodeScreen extends StatelessWidget {
  const QRAndCodeScreen({super.key});

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
                    builder: (BuildContext context) => const NavBarScreen()));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 5.h, left: 10.w, bottom: 5.h),
            child: Column(
              children: [
                Container(
                  width: 40.w,
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
          'QR & Coda',
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
              Row(
                children: [
                  Text(
                    'Invoice addition via code',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 12.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
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
                    'Create code',
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
              SizedBox(height: 10.h),
              Row(children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.r),
                      child: Divider(
                        color: const Color(0xFFC1C2C3),
                        height: 30.h,
                        thickness: 1,
                        endIndent: 0,
                        indent: 5,
                      )),
                ),
                Text(
                  'Or',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.r),
                      child: Divider(
                        color: const Color(0xFFC1C2C3),
                        height: 30.h,
                        thickness: 1,
                        endIndent: 0,
                        indent: 5,
                      )),
                ),
              ]),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    'Invoice addition via QR',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 12.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [Image.asset("Images/HomePage/Pay Now/QR.png")],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ConfirmBillPayment()));
                },
                child: Column(children: [
                  SizedBox(
                    width: 50.h,
                    height: 50.w,
                    child: Image.asset("Images/HomePage/Pay Now/System.png"),
                  )
                ]),
              ),
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create a new QR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 12.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Icon(
                    Icons.rotate_left_outlined,
                    color: Color(0xFF6E34B8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

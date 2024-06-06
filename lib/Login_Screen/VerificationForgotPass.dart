import 'dart:math';

import 'package:eldaftar_app/Login_Screen/New_Password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../Register/Register_Screen.dart';

class VerificationForgotPass extends StatelessWidget {
  const VerificationForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(children: [
          SizedBox(height: 50.h),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200.w,
                    height: 40.h,
                    padding: EdgeInsets.all(5.w),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF1EBF8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 5.h),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF6E34B8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Log in',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.5.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const RegisterScreen()));
                            },
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 5.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Register',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 12.5.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        'Or continue with',
                        style: TextStyle(
                          color: const Color(0xFF5A5D61),
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 22.w,
                        height: 22.h,
                        child: SvgPicture.asset("Images/Login/Facebook.svg"),
                      ),
                      SizedBox(width: 7.w),
                      SizedBox(
                        width: 22.w,
                        height: 22.h,
                        child: SvgPicture.asset("Images/Login/apple.svg"),
                      ),
                      SizedBox(width: 7.w),
                      SizedBox(
                        width: 22.w,
                        height: 22.h,
                        child: SvgPicture.asset("Images/Login/google.svg"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Column(
                children: [
                  SizedBox(
                    width: 327,
                    child: Text(
                      'Enter the verification code here',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
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
              SizedBox(height: 30.h),
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
              SizedBox(height: 50.h),
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
                                    const VerificationForgotPass()));
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
                              'Back',
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
                                    const NewPasswordScreen()));
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
                              Icons.arrow_forward_ios,
                              size: 15,
                              weight: sqrt1_2,
                            )
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}

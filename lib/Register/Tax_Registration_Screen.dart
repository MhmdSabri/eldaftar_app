import 'dart:math';

import 'package:eldaftar_app/Register/Password_Screen.dart';
import 'package:eldaftar_app/Register/Verification_Email_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';

class TaxRegistrationScreen extends StatelessWidget {
  const TaxRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
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
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             const LoginScreen()));
                          },
                          child: Container(
                            height: 35.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Log in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
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
                                  'Register',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
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
            Row(
              children: [
                Text(
                  'Tax registration number',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(color: Color(0xFFEBEBEC)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                    hintText: 'Enter Tax registration number',
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xFFC1C2C3), fontSize: 12.5.sp)),
              ),
            ]),
            SizedBox(height: 25.h),
            Row(
              children: [
                Text(
                  'Tax registration certificate',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Column(
              children: [
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(4.r),
                  color: const Color(0xFFD71CDB),
                  strokeWidth: 1.2.w,
                  dashPattern: const [7, 5],
                  child: Container(
                    width: double.infinity,
                    height: 38.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: SvgPicture.asset(
                              "Images/Register/Folder_Upload.svg",
                              height: 20.h),
                        ),
                        SizedBox(width: 8.w),
                        SizedBox(
                          height: 20.w,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Upload Tax registration certificate ',
                                style: TextStyle(
                                  color: const Color(0xFFC1C2C3),
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
                  ),
                ),
              ],
            ),
            SizedBox(height: 110.h),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const VerificationEmailScreen()));
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
                                      const PasswordScreen()));
                        },
                        color: const Color(0xFF6E34B8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        textColor: Colors.white,
                        height: 42.h,
                        // minWidth: 165.w,
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Next',
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
            )
          ],
        ),
      ),
    );
  }
}

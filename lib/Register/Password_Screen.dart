import 'dart:math';

import 'package:eldaftar_app/Register/Tax_Registration_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  late bool secret = true;
  late bool secret2 = true;
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
                  'Password',
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
                obscureText: secret,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                    hintText: '••••••••',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            secret = !secret;
                          });
                        },
                        icon: Image.asset("Images/Login/eye (1).png")),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xFFC1C2C3), fontSize: 12.5.sp)),
              ),
            ]),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Re_Password',
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
                obscureText: secret2,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                    hintText: 'Ex: Qw9dnkn223mKH',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            secret2 = !secret2;
                          });
                        },
                        icon: Image.asset("Images/Login/eye (1).png")),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xFFC1C2C3), fontSize: 12.5.sp)),
              ),
            ]),
            Column(
              children: [
                SizedBox(height: 80.h),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const TaxRegistrationScreen()));
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) =>
                          //             const NewPasswordScreen()));
                        },
                        color: const Color(0xFF6E34B8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.w)),
                        textColor: Colors.white,
                        height: 42.h,
                        // minWidth: 165.w,
                        child: Text(
                          'Send Request',
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
            )
          ],
        ),
      ),
    );
  }
}

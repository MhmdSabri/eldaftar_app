import 'dart:math';

import 'package:eldaftar_app/Login_Screen/VerificationForgotPass.dart';
import 'package:eldaftar_app/Login_Screen/VerificationLOGIN.dart';
import 'package:eldaftar_app/Register/Register_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/svg.dart';

// import '../Register/Register_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var controller = PageController();
  // bool click = true;
  late bool secret = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(children: [
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
              Row(
                children: [
                  Text(
                    'Your Number',
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
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number here ',
                    contentPadding: EdgeInsets.only(
                        top: 12.r, bottom: 10.r, right: 10.r, left: 10.r),
                    labelStyle: TextStyle(
                      color: const Color(0xFFC1C2C3),
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                    hintStyle: TextStyle(
                      color: const Color(0xFFC1C2C3),
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                  ),
                  initialCountryCode: 'EG',
                  dropdownTextStyle: TextStyle(
                    color: const Color(0xFFC1C2C3),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  disableLengthCheck: true,
                  showCountryFlag: false,
                  showDropdownIcon: true,
                  dropdownIcon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xffC1C2C3),
                  ),
                ),
              ]),
              SizedBox(height: 20.h),
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
                          borderSide:
                              const BorderSide(color: Color(0xFFEBEBEC))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFD71CDB))),
                      contentPadding:
                          EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                      hintText: 'Enter your password here',
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
              SizedBox(height: 5.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const VerificationForgotPass()));
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 11.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const VerificationLOGIN()));
                    },
                    color: const Color(0xFF6E34B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r)),
                    textColor: Colors.white,
                    height: 42.h,
                    minWidth: 165.w,
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
                ],
              ),
            ],
          ),
          /////////////////////////////

          // const RegisterScreen(),
        ]),
      ),
    );
  }
}

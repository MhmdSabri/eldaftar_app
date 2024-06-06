import 'package:eldaftar_app/Payment_Request/Payment_Request_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'My_Requests_Screen.dart';

class RequestRejectedScreen extends StatelessWidget {
  const RequestRejectedScreen({super.key});

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
                        const MyRequestsScreen()));
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
                            "Images/NavBar/Payment request/new request/Shield Cross.svg"),
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
                  'Reques has been rejected',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const PaymentRequest3()));
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
                          'Submit a new request',
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
                            "Images/NavBar/Payment request/Receiving Payment request/Stop_Sign.svg")
                      ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

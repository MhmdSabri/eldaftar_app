import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Customer_Follow-up_Screen.dart';

class FollowUPInvoicesScreen extends StatefulWidget {
  const FollowUPInvoicesScreen({super.key});

  @override
  State<FollowUPInvoicesScreen> createState() => _FollowUPInvoicesScreenState();
}

class _FollowUPInvoicesScreenState extends State<FollowUPInvoicesScreen> {
  List dateIcon = [
    "Images/HomePage/the shop/calendar.svg",
    "Images/HomePage/the shop/calendar.svg",
    "Images/HomePage/the shop/calendar.svg",
  ];

  List date = [
    "29/11/2023",
    "29/11/2023",
    "29/11/2023",
  ];

  List invoicesTitle = [
    "Account invoice",
    "Account invoice",
    "Account invoice",
  ];

  List invoicesImage = [
    "Images/HomePage/the shop/unsplash_xkArbdUcUeE.png",
    "Images/HomePage/the shop/unsplash_xkArbdUcUeE.png",
    "Images/HomePage/the shop/unsplash_xkArbdUcUeE.png",
  ];

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
                        const CustomerFollowUpScreen()));
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
          'Invoices',
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
            ListView.builder(
              itemCount: dateIcon.length,
              // padding: EdgeInsets.all(12),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Container(
                  width: 300,
                  height: 205.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F353535),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        SvgPicture.asset(dateIcon[index]),
                        SizedBox(width: 10.w),
                        Text(
                          date[index],
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
                        Text(
                          invoicesTitle[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
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
                          height: 105.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(invoicesImage[index]),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

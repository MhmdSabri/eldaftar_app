import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../NavBar/NavBar.dart';
import 'Loan_Details_Screen_Two.dart';
import 'Loan_List_Screen.dart';

class AddLoanDetailsScreen extends StatelessWidget {
  const AddLoanDetailsScreen({super.key});

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
          'Add loan details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const LoanListScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 12.r,
                top: 5.r,
              ),
              child: Column(
                children: [
                  SizedBox(
                      width: 22.w,
                      height: 25.h,
                      child: SvgPicture.asset(
                          "Images/HomePage/loans/List_Unordered.svg")),
                  // SizedBox(height: 5.h),
                  Text(
                    'loan list',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6E34B8),
                      fontSize: 10.75.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            Row(
              children: [
                Text(
                  'Loan data',
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
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Money',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                    hintText: 'SAR',
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xFF5A5D61), fontSize: 12.5.sp)),
              ),
            ]),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Payment date',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFD71CDB))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                    hintText: '29/11/2023',
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xFF5A5D61), fontSize: 12.5.sp)),
              ),
            ]),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Message',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFD71CDB))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFD71CDB))),
                contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 15.w, 10.h),
                hintText: 'Write your message here',
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                Text(
                  'Optional',
                  style: TextStyle(
                    color: const Color(0xFFC1C2C3),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                Text(
                  'Add images or files',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(4.r),
                  color: const Color(0xFF6E34B8),
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
                              "Images/HomePage/loans/Cloud_Upload.svg",
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
                                'Select an image or file from here',
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
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      'Optional',
                      style: TextStyle(
                        color: const Color(0xFFC1C2C3),
                        fontSize: 11.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
                                const LoanDetailsTwoScreen()));
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
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ]),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../NavBar/NavBar.dart';
import 'Approval_Of_Loan.dart';
import 'Borrow_List_Screen.dart';

class DebtorScreen extends StatelessWidget {
  const DebtorScreen({super.key});

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
          'Shops',
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
                          const BorrowListScreen()));
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
                    'Borrow list',
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
            SizedBox(height: 50.h),
            Center(
              child: Text(
                'Scan QR via other party device',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 14.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 15.h),
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
                            const ApprovalOfLoan()));
              },
              child: Column(children: [
                SizedBox(
                  width: 50.h,
                  height: 50.w,
                  child: Image.asset("Images/HomePage/Pay Now/System.png"),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Approval_Of_Loan.dart';

class LoanDetailsScreen extends StatefulWidget {
  const LoanDetailsScreen({super.key});

  @override
  State<LoanDetailsScreen> createState() => _LoanDetailsScreenState();
}

class _LoanDetailsScreenState extends State<LoanDetailsScreen> {
  DateTime date = DateTime.now();
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
                    builder: (BuildContext context) => const ApprovalOfLoan()));
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
          'Loan details',
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
          SizedBox(height: 15.h),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'The loan is from ',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Sherif',
                      style: TextStyle(
                        color: const Color(0xFF6E34B8),
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' to you',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              SvgPicture.asset("Images/HomePage/the shop/C-card.svg"),
              SizedBox(width: 10.w),
              Text(
                '5000 SAR ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF12161C),
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
                  color: const Color(0xFF12161C),
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
              SvgPicture.asset("Images/HomePage/Invoices/d.message.svg"),
              SizedBox(width: 8.w),
              Text(
                'Please repay the loan on time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 12.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        "Images/HomePage/loans/unsplash_xkArbdUcUeE (1).png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.w)),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                'Request to extend the payment date',
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
              MaterialButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                      confirmText: 'Confirm',
                      cancelText: 'Cancel',
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData(
                            splashColor: Colors.black,
                            textTheme: const TextTheme(),
                            colorScheme: const ColorScheme.light(
                              primary: Color(0xFF6E34B8),
                              //
                            ),
                          ),
                          child: child ?? const Text(""),
                        );
                      },
                      context: context,
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100),
                      initialDate: DateTime.now());

                  if (newDate == null) return;
                  setState(() {
                    date = newDate;
                  });
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.w),
                    side: const BorderSide(
                      width: 1.5,
                      color: Color(0xFF6E34B8),
                    )),
                textColor: Colors.white,
                height: 42.h,
                minWidth: double.infinity,
                child: Text(
                  'Send request',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF6E34B8),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ]),
      )),
    );
  }
}

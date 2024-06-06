import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Add_Loan_Details_Screen.dart';

class LoanDetailsTwoScreen extends StatelessWidget {
  const LoanDetailsTwoScreen({super.key});

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
                        const AddLoanDetailsScreen()));
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Row(
                children: [
                  Text(
                    'All loans',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6E34B8),
                      fontSize: 14.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'The loan is from you to ',
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
                        height: 0.09,
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        insetPadding: EdgeInsets.all(12.r),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                        backgroundColor: const Color(0xffFFFFFF),
                        content: SizedBox(
                          height: 140.h,
                          width: 300.w,
                          child: Column(children: [
                            SizedBox(height: 10.h),
                            Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Are you sure that the loan has been repaid?',
                                      style: TextStyle(
                                        color: const Color(0xFF6E34B8),
                                        fontSize: 15.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Wrap(
                              children: [
                                Text(
                                  'The loan will be permanently deleted from both parties, please be careful in this step',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.4),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    color: const Color(0xffF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.w)),
                                    textColor: Colors.white,
                                    height: 42.h,
                                    // minWidth: 165.w,
                                    child: Text(
                                      'Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF6E34B8),
                                        fontSize: 14.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {
                                      // Navigator.pushReplacement(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (BuildContext
                                      //                 context) =>
                                      //             const InvoicesScreen()));
                                      Navigator.pop(context);
                                    },
                                    color: const Color(0xFF6E34B8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.w)),
                                    textColor: Colors.white,
                                    height: 42.h,
                                    // minWidth: 165.w,
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                          SizedBox(width: 10.w),
                                          const Icon(
                                            Icons.check_box_outlined,
                                            size: 22,
                                            weight: sqrt1_2,
                                            color: Colors.white,
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      );
                    },
                  );
                },
                color: const Color(0xFFF1EBF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.w)),
                textColor: Colors.white,
                height: 42.h,
                minWidth: double.infinity,
                child: Text(
                  'Pay off the loan',
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

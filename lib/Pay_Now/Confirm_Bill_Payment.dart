import 'package:eldaftar_app/Invoices_Screen/Invoices_Screen.dart';
import 'package:eldaftar_app/NavBar/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:data_table_2/data_table_2.dart';

class ConfirmBillPayment extends StatelessWidget {
  const ConfirmBillPayment({super.key});

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
          'Confirm bill payment',
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
          child: Column(
            children: [
              Column(
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
                ],
              ),
              SizedBox(height: 15.h),
              Row(
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
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  SvgPicture.asset("Images/HomePage/the shop/flag.svg"),
                  SizedBox(width: 10.w),
                  Text(
                    'Makkah branch',
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
                  Text(
                    'Account invoice',

                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 13.sp,
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
                          text: 'The total amount = ',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '500',
                          style: TextStyle(
                            color: const Color(0xFF6E34B8),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                        TextSpan(
                          text: 'SAR',
                          style: TextStyle(
                            color: const Color(0xFF5A5D61),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 135.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            "Images/HomePage/the shop/unsplash_xkArbdUcUeE.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                color: Colors.white,
                // padding: EdgeInsets.all(10.r),
                child: Table(
                  border: TableBorder.all(color: Colors.white),
                  children: [
                    TableRow(children: [
                      Container(
                          height: 40.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF6E34B8),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.33,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF1EBF8),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                Text(
                                  'Series num',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Container(
                          height: 40.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF6E34B8),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.33,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF1EBF8),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Container(
                          height: 40.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF6E34B8),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.33,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF1EBF8),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                Text(
                                  'The price',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '2/3/2023',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '100 SAR',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '5/4/2023',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '250 SAR',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '8/7/2023',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 45.h,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.33,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFF1EBF8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Text(
                                '150 SAR',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
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
                                height: 190.h,
                                width: 300.w,
                                child: Column(children: [
                                  SizedBox(height: 10.h),
                                  Wrap(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'The reason',
                                            style: TextStyle(
                                              color: const Color(0xFF12161C),
                                              fontSize: 14.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Column(children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.w),
                                            borderSide: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFD71CDB))),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.r),
                                            borderSide: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFD71CDB))),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.w, 12.h, 15.w, 10.h),
                                        hintText: 'Write your reason here',
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
                                  ]),
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
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        const InvoicesScreen()));
                                          },
                                          color: const Color(0xFF6E34B8),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.w)),
                                          textColor: Colors.white,
                                          height: 42.h,
                                          // minWidth: 165.w,
                                          child: Text(
                                            'Send',
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
                                  ),
                                ]),
                              ),
                            );
                          },
                        );
                      },
                      color: const Color(0xffF1EBF8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w)),
                      textColor: Colors.white,
                      height: 42.h,
                      // minWidth: 165.w,
                      child: Text(
                        'Reject',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const InvoicesScreen()));
                      },
                      color: const Color(0xFF6E34B8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w)),
                      textColor: Colors.white,
                      height: 42.h,
                      // minWidth: 165.w,
                      child: Text(
                        'Confirm',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Invoices_Screen.dart';

class NewInvoicesScreen extends StatelessWidget {
  const NewInvoicesScreen({super.key});

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
                    builder: (BuildContext context) => const InvoicesScreen()));
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
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Manual invoice number',
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
                          borderSide:
                              const BorderSide(color: Color(0xFFEBEBEC))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFD71CDB))),
                      contentPadding:
                          EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                      hintText: 'Add the number here',
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
                    'Add invoice details',
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
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
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
                            Text(
                              'Manually',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF6E34B8),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                                "Images/NavBar/Payment request/Receiving Payment request/Edit_Pencil_Line_01.svg")
                          ]),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
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
                            Text(
                              'Add image',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF6E34B8),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                                "Images/HomePage/Invoices/Vector.svg")
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    'My notes',
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
                  hintText: 'Add your notes here',
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
              SizedBox(height: 20.h),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) =>
                      //             const NavBarScreen()));
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
                            'Send',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Icon(
                            Icons.qr_code_rounded,
                            size: 23,
                          )
                        ]),
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

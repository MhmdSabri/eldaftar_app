import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BlacklistedCustomersScreen extends StatelessWidget {
  const BlacklistedCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffF1EBF8),
                            suffixIcon: const Icon(Icons.search_outlined,
                                size: 27, color: Color(0xFF6E34B8)),
                            hintText: 'Search',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.w, 10.h, 15.w, 10.h),
                            hintStyle: TextStyle(
                              color: const Color(0xFF6E34B8),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.w),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.w),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.r),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ))),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210.h,
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/NavBar/Payment request/Receiving Payment request/Receiving Payment request.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.w)),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Mohamed Elsherif',
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
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/location.svg"),
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
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/ICONcall.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '01010512799',
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
                            SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg"),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              minWidth: double.infinity,
                              child: Text(
                                'Remove from blacklist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF6E34B8),
                                  fontSize: 14.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210.h,
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/NavBar/Payment request/Receiving Payment request/Receiving Payment request.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.w)),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Mohamed Elsherif',
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
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/location.svg"),
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
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/ICONcall.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '01010512799',
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
                            SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg"),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              minWidth: double.infinity,
                              child: Text(
                                'Remove from blacklist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF6E34B8),
                                  fontSize: 14.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210.h,
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/NavBar/Payment request/Receiving Payment request/Receiving Payment request.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.w)),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Mohamed Elsherif',
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
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg",
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/location.svg"),
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
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/the shop/ICONcall.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '01010512799',
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
                            SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg"),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              minWidth: double.infinity,
                              child: Text(
                                'Remove from blacklist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF6E34B8),
                                  fontSize: 14.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

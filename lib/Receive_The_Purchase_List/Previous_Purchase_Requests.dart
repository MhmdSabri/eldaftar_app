import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PreviousPurchaseRequests extends StatelessWidget {
  const PreviousPurchaseRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.r),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
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
                                SizedBox(height: 5.h),
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
                            )
                          ],
                        ),
                        SizedBox(height: 15.h),
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
                        SizedBox(height: 10.h),
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
                        SizedBox(height: 10.h),
                        const Divider(
                          color: Color(0xFFEBEBEC),
                          // height: 30.h,
                          thickness: 1,
                          endIndent: 0,
                          indent: 5,
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/purchase/File_Document.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  'Daily purchases',
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
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/purchase/Label.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '2 kilos of meat',
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
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/purchase/Label.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '2 kilos of meat',
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
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "Images/HomePage/purchase/Label.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  '2 kilos of meat',
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
                          ],
                        ),
                        SizedBox(height: 15.h),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

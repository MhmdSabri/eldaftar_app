import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'View_Store_Clients.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF1EBF8),
                suffixIcon: const Icon(Icons.search_outlined,
                    size: 27, color: Color(0xFF6E34B8)),
                hintText: 'Find the client',
                contentPadding: EdgeInsets.fromLTRB(20.w, 15.h, 15.w, 15.h),
                hintStyle: TextStyle(
                  color: const Color(0xFF6E34B8),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ))),
      ),
      SizedBox(height: 10.h),
      Expanded(
        child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: 10.r, right: 1.w, left: 1.w, top: 1.h),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 175.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.w)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 2,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(children: [
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.all(12.r),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mohamed Elsherif',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 16.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SvgPicture.asset(
                                    "Images/NavBar/Heart.BOLD.svg"),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Overall count of invoices =  ',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '423',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 12.5.sp,
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
                                SizedBox(
                                  width: 14.w,
                                  height: 14.h,
                                  child: SvgPicture.asset(
                                      "Images/HomePage/the shop/calendar.svg"),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'Last invoice date: 29/04/2023',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
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
                                                const ViewStoreClientsScreen()));
                                  },
                                  color: const Color(0xFF6E34B8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.w)),
                                  textColor: Colors.white,
                                  height: 42.h,
                                  minWidth: double.infinity,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View store',
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
                                          Icons.remove_red_eye_outlined,
                                          size: 20,
                                        )
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}

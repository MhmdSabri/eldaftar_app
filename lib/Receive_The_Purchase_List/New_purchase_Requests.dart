import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewpurchaseRequests extends StatelessWidget {
  const NewpurchaseRequests({super.key});

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
                    height: 320.h,
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
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(12.r),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.w, 10.h, 10.w, 10.h),
                                        backgroundColor:
                                            const Color(0xffFFFFFF),
                                        content: SizedBox(
                                          height: 300.h,
                                          width: 350.w,
                                          child: Column(children: [
                                            SizedBox(height: 10.h),
                                            SizedBox(
                                              height: 170.h,
                                              width: 280.w,
                                              child: Image.asset(
                                                  "Images/HomePage/purchase/submit-application-successfully.png"),
                                            ),
                                            SizedBox(height: 5.h),
                                            Column(children: [
                                              Wrap(
                                                children: [
                                                  Text(
                                                    'Your shopping list has been approved successfully',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFF12161C),
                                                      fontSize: 14.5.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                            SizedBox(height: 20.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                MaterialButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  color:
                                                      const Color(0xFF6E34B8),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.w)),
                                                  textColor: Colors.white,
                                                  height: 42.h,
                                                  minWidth: 165.w,
                                                  child: Text(
                                                    'Ok',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                color: const Color(0xFF6E34B8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.w)),
                                textColor: Colors.white,
                                height: 42.h,
                                // minWidth: 165.w,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                            SizedBox(width: 10.w),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(12.r),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.w, 10.h, 10.w, 10.h),
                                        backgroundColor:
                                            const Color(0xffFFFFFF),
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
                                                        color: const Color(
                                                            0xFF12161C),
                                                        fontSize: 14.5.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                          BorderRadius.circular(
                                                              4.w),
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0xFFD71CDB))),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.r),
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0xFFD71CDB))),
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(10.w,
                                                          12.h, 15.w, 10.h),
                                                  hintText:
                                                      'Write your reason here',
                                                  fillColor:
                                                      const Color(0xffFFFFFF),
                                                  filled: true,
                                                  hintStyle: TextStyle(
                                                    color:
                                                        const Color(0xFFC1C2C3),
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
                                                    color:
                                                        const Color(0xffF1EBF8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.w)),
                                                    textColor: Colors.white,
                                                    height: 42.h,
                                                    // minWidth: 165.w,
                                                    child: Text(
                                                      'Cancel',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF6E34B8),
                                                        fontSize: 14.5.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                    color:
                                                        const Color(0xFF6E34B8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.w)),
                                                    textColor: Colors.white,
                                                    height: 42.h,
                                                    // minWidth: 165.w,
                                                    child: Text(
                                                      'Send',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Reject',
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
                                          "Images/NavBar/Payment request/Receiving Payment request/Stop_Sign.svg")
                                    ]),
                              ),
                            ),
                          ],
                        )
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

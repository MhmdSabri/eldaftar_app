import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'FollowUP_Invoices.dart';

class CurrentCustomersScreen extends StatelessWidget {
  const CurrentCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Column(children: [
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
                          hintText: 'Search for clients',
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
                  height: 322.h,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                            children: [
                              SvgPicture.asset(
                                "Images/NavBar/Heart.BOLD.svg",
                              ),
                              SizedBox(height: 10.h),
                              SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg",
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
                                  "Images/HomePage/the shop/request num.svg"),
                              SizedBox(width: 10.w),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Number of invoices: ',
                                      style: TextStyle(
                                        color: const Color(0xFF5A5D61),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '12',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const FollowUPInvoicesScreen()));
                            },
                            child: SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/vector..eye.svg"),
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
                                  "Images/HomePage/the shop/C-card.svg"),
                              SizedBox(width: 5.w),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Credit limit: 1000 ',
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 12.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'SAR',
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
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
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.all(12.r),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        10.w, 10.h, 10.w, 10.h),
                                    backgroundColor: const Color(0xffFFFFFF),
                                    content: SizedBox(
                                      height: 140.h,
                                      width: 300.w,
                                      child: Column(children: [
                                        SizedBox(height: 10.h),
                                        Wrap(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Credit limit',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF12161C),
                                                    fontSize: 14.5.sp,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5.h),
                                        Column(children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.r),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: Color(
                                                                0xFFEBEBEC))),
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
                                                    EdgeInsets.fromLTRB(
                                                        10.w, 12.h, 20.w, 10.h),
                                                hintText:
                                                    'Write credit limit here',
                                                fillColor:
                                                    const Color(0xffFFFFFF),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                  color:
                                                      const Color(0xFFC1C2C3),
                                                  fontSize: 14.5.sp,
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                                                        BorderRadius.circular(
                                                            5.w)),
                                                textColor: Colors.white,
                                                height: 42.h,
                                                // minWidth: 165.w,
                                                child: Text(
                                                  'Cancel',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF6E34B8),
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
                                                  Navigator.pop(context);
                                                },
                                                color: const Color(0xFF6E34B8),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.w)),
                                                textColor: Colors.white,
                                                height: 42.h,
                                                // minWidth: 165.w,
                                                child: Text(
                                                  'Save',
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
                            child: SvgPicture.asset(
                                "Images/NavBar/Payment request/Receiving Payment request/Edit_Pencil_Line_01.svg"),
                          ),
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
                                    contentPadding: EdgeInsets.fromLTRB(
                                        10.w, 10.h, 10.w, 10.h),
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
                                                  'Add notes',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF12161C),
                                                    fontSize: 14.5.sp,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5.h),
                                        Column(children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.w),
                                                  borderSide: const BorderSide(
                                                      width: 1,
                                                      color:
                                                          Color(0xFFD71CDB))),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.r),
                                                  borderSide: const BorderSide(
                                                      width: 1,
                                                      color:
                                                          Color(0xFFD71CDB))),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.w, 12.h, 15.w, 10.h),
                                              hintText:
                                                  'Write your message here',
                                              fillColor:
                                                  const Color(0xffFFFFFF),
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
                                                        BorderRadius.circular(
                                                            5.w)),
                                                textColor: Colors.white,
                                                height: 42.h,
                                                // minWidth: 165.w,
                                                child: Text(
                                                  'Cancel',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF6E34B8),
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
                                                  Navigator.pop(context);
                                                },
                                                color: const Color(0xFF6E34B8),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.w)),
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
                            color: const Color(0xFF6E34B8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            textColor: Colors.white,
                            height: 42.h,
                            minWidth: double.infinity,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send notes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  SvgPicture.asset(
                                      "Images/NavBar/Payment request/new request/notification.white.svg")
                                ]),
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
                              child: Text(
                                'Stop dealing',
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
                          SizedBox(width: 15.w),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              // minWidth: 165.w,
                              child: Text(
                                'Add to blacklist',
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
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 322.h,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                            children: [
                              SvgPicture.asset(
                                "Images/NavBar/Heart.BOLD.svg",
                              ),
                              SizedBox(height: 10.h),
                              SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg",
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
                                  "Images/HomePage/the shop/request num.svg"),
                              SizedBox(width: 10.w),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Number of invoices: ',
                                      style: TextStyle(
                                        color: const Color(0xFF5A5D61),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '12',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Customer follow up/vector..eye.svg"),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  "Images/HomePage/the shop/C-card.svg"),
                              SizedBox(width: 5.w),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Credit limit: 1000 ',
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 12.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'SAR',
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
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
                              )
                            ],
                          ),
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Receiving Payment request/Edit_Pencil_Line_01.svg"),
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
                        ],
                      ),
                      SizedBox(height: 15.h),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send notes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  SvgPicture.asset(
                                      "Images/NavBar/Payment request/new request/notification.white.svg")
                                ]),
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
                              child: Text(
                                'Stop dealing',
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
                          SizedBox(width: 15.w),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              // minWidth: 165.w,
                              child: Text(
                                'Add to blacklist',
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
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 322.h,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                            children: [
                              SvgPicture.asset(
                                "Images/NavBar/Heart.BOLD.svg",
                              ),
                              SizedBox(height: 10.h),
                              SvgPicture.asset(
                                "Images/NavBar/Payment request/Customer follow up/message.svg",
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
                                  "Images/HomePage/the shop/request num.svg"),
                              SizedBox(width: 10.w),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Number of invoices: ',
                                      style: TextStyle(
                                        color: const Color(0xFF5A5D61),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '12',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Customer follow up/vector..eye.svg"),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  "Images/HomePage/the shop/C-card.svg"),
                              SizedBox(width: 5.w),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Credit limit: 1000 ',
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 12.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'SAR',
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
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
                              )
                            ],
                          ),
                          SvgPicture.asset(
                              "Images/NavBar/Payment request/Receiving Payment request/Edit_Pencil_Line_01.svg"),
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
                        ],
                      ),
                      SizedBox(height: 15.h),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send notes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  SvgPicture.asset(
                                      "Images/NavBar/Payment request/new request/notification.white.svg")
                                ]),
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
                              child: Text(
                                'Stop dealing',
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
                          SizedBox(width: 15.w),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w)),
                              textColor: Colors.white,
                              height: 42.h,
                              // minWidth: 165.w,
                              child: Text(
                                'Add to blacklist',
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
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

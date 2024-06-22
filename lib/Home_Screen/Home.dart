import 'dart:math';

import 'package:eldaftar_app/Payment_Request/My_Requests_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Customer_Follow-up_Screen/Customer_Follow-up_Screen.dart';
import '../Invoices_Screen/Invoices_Screen.dart';
import '../Pay_Now/QR_And_Code.dart';
import '../Receive_The_Purchase_List/Receive_The_Purchase_List.dart';
import '../Receiving_Payment_Request/Receiving_Payment_Request.dart';
import 'Chat_Screen/Chat_Screen.dart';
import 'Notifications_Screen.dart';
import 'Offers_Screen/Offers_Screen.dart';
import 'Shops_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List sealImages = [
    "Images/HomePage/Discount/Rectangle 1.png",
    "Images/HomePage/Discount/Rectangle 2.png",
    "Images/HomePage/Discount/Rectangle 3.png",
    "Images/HomePage/Discount/Rectangle 4.png",
  ];
  List storeName = [
    "BMW Store",
    "Makeup Store",
    "HUAWEI Store",
    "Apple Store",
  ];
  List discountPercentage = [
    "Discounts up to 10%",
    "Discounts up to 15%",
    "Discounts up to 50%",
    "Discounts up to 30%",
  ];

  List discountIcon = [
    "Images/HomePage/Discount/Vector.svg",
    "Images/HomePage/Discount/Vector.svg",
    "Images/HomePage/Discount/Vector.svg",
    "Images/HomePage/Discount/Vector.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffF1EBF8),
          elevation: 2,
          shape: const OvalBorder(
            side: BorderSide(width: 1, color: Colors.white),
          ),
          child: Image.asset("Images/HomePage/Chat_Circle_Dots.png"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const ChatScreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 15,
        leadingWidth: 297.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 15.r, top: 4.r, bottom: 6.r),
          child: Container(
            width: 150.w,
            height: 40.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.w)),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    suffixIcon: const Icon(Icons.search_outlined,
                        size: 27, color: Color(0xFF6E34B8)),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.fromLTRB(20.w, 10.h, 15.w, 10.h),
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
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.r, top: 3.r, bottom: 4.r),
            child: Column(children: [
              Container(
                width: 45.w,
                height: 39.h,
                // padding: EdgeInsets.all(8.r),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.w)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const NotificationsScreen()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 22.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          "Images/HomePage/Bell.svg",
                          height: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 78.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1EBF8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26FF0000),
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
                          SizedBox(
                            width: 80.w,
                            height: 78.h,
                            child: Image.asset("Images/HomePage/star.png"),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good handling',
                                style: TextStyle(
                                  color: const Color(0xFF6E34B8),
                                  fontSize: 18.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '75% ',
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Offers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const OffersScreen()));
                  },
                  child: Text(
                    'See All',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 10.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 170.h,
              width: double.infinity,
              child: PageView.builder(
                physics: const RangeMaintainingScrollPhysics(),
                itemCount: sealImages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 135.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.w)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 2,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 85.h,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(sealImages[index]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.w),
                                    topRight: Radius.circular(8.w),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 40.h,
                              padding: EdgeInsets.only(
                                  left: 12.r,
                                  right: 12.r,
                                  bottom: 3.r,
                                  top: 6.r),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        storeName[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 15.w,
                                            height: 15.h,
                                            child: SvgPicture.asset(
                                                discountIcon[index]),
                                          ),
                                          SizedBox(width: 3.w),
                                          SizedBox(
                                            width: 130.w,
                                            child: Text(
                                              discountPercentage[index],
                                              style: TextStyle(
                                                color: const Color(0xFF5A5D61),
                                                fontSize: 10.5.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
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
                    Row(
                      children: [
                        Text(
                          'Payment request',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 305.w,
                              child: Text(
                                'You can create a new payment request from her',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ShopsScreen()));
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Show stores',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
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
                                    'Scan QR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF6E34B8),
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  const Icon(
                                    Icons.qr_code_rounded,
                                    size: 25,
                                    color: Color(0xFF6E34B8),
                                    weight: sqrt1_2,
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    )
                  ]),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 147.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 12.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.w)),
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
                          Row(
                            children: [
                              Text(
                                'Pay now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 13.sp.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 145.w,
                                    child: Text(
                                      'You can pay your bills now from here',
                                      style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const QRAndCodeScreen()));
                                  },
                                  color: const Color(0xFF6E34B8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.w)),
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
                                          'Pay',
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
                                          Icons.credit_card,
                                          size: 25,
                                          color: Colors.white,
                                          weight: sqrt1_2,
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 147.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 12.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.w)),
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
                          Row(
                            children: [
                              Text(
                                'Requests',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 13.sp.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 145.w,
                                    child: Text(
                                      'You can see all your requests from here',
                                      style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const MyRequestsScreen()));
                                  },
                                  color: const Color(0xFF6E34B8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.w)),
                                  textColor: Colors.white,
                                  height: 42.h,
                                  // minWidth: 165.w,
                                  child: Text(
                                    'Show requests',
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
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
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
                    Row(
                      children: [
                        Text(
                          'Receiving payment requests',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 305.w,
                              child: Text(
                                'You can receive payment requests from here',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ReceivingPaymentRequestScreen()));
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Show ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'requests',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                      "Images/HomePage/File_Document.svg")
                                ]),
                          ),
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
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
                    Row(
                      children: [
                        Text(
                          'Customer follow-up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 305.w,
                              child: Text(
                                'You can follow clients here',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CustomerFollowUpScreen()));
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Show',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                      "Images/HomePage/File_Document.svg")
                                ]),
                          ),
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
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
                    Row(
                      children: [
                        Text(
                          'Invoices',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 305.w,
                              child: Text(
                                'View all of my Invoices here',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
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
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Show ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Invoices',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                      "Images/HomePage/File_Document.svg")
                                ]),
                          ),
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
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
                    Row(
                      children: [
                        Text(
                          'Purchase',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 13.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 305.w,
                              child: Text(
                                'View and add purchases lists from here',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ReceiveThePurchaseListScreen()));
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'My Purchase',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                      "Images/HomePage/Shopping_Bag_02.svg")
                                ]),
                          ),
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

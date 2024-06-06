import 'package:eldaftar_app/NavBar/NavBar.dart';
import 'package:eldaftar_app/Payment_Request/My_Requests_Screen.dart';
import 'package:eldaftar_app/Payment_Request/Payment_Request_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'All_Shops.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({super.key});

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
          'Shops',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const PaymentRequest3()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 12.r, top: 5.r, bottom: 5.r),
              child: SizedBox(
                  width: 22.w,
                  height: 25.h,
                  child: SvgPicture.asset("Images/HomePage/Shops/Qr_Code.svg")),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All my requests',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
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
                                const MyRequestsScreen()));
                  },
                  child: Text(
                    'See All',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 11.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 210.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 205.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 8.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 170.w,
                                        height: 100.h,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                "Images/HomePage/Shops/my requests/skoda.png"),
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
                                    ),
                                    Positioned(
                                      right: 5.w,
                                      top: 5.h,
                                      child: SizedBox(
                                        width: 22.w,
                                        height: 22.h,
                                        child: SvgPicture.asset(
                                            "Images/HomePage/Shops/my requests/Shield.svg"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Carrefour Store',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        Text(
                                          'Riyadh, Saudi Arabia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: MaterialButton(
                                            onPressed: () {},
                                            color: const Color(0xffF1EBF8),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.w)),
                                            textColor: Colors.white,
                                            height: 42.h,
                                            // minWidth: 165.w,
                                            child: Text(
                                              'View request',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF6E34B8),
                                                fontSize: 14.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 205.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 8.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 170.w,
                                        height: 100.h,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                "Images/HomePage/Shops/my requests/apple.png"),
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
                                    ),
                                    Positioned(
                                      right: 5.w,
                                      top: 5.h,
                                      child: SizedBox(
                                        width: 22.w,
                                        height: 22.h,
                                        child: SvgPicture.asset(
                                            "Images/HomePage/Shops/my requests/Shield.svg"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Apple Store',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        Text(
                                          'Riyadh, Saudi Arabia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: MaterialButton(
                                            onPressed: () {},
                                            color: const Color(0xffF1EBF8),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.w)),
                                            textColor: Colors.white,
                                            height: 42.h,
                                            // minWidth: 165.w,
                                            child: Text(
                                              'View request',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF6E34B8),
                                                fontSize: 14.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
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
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'The nearest places',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 170.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 165.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 10.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170.w,
                                      height: 100.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "Images/HomePage/Shops/my requests/skoda.png"),
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Carrefour Store',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        Text(
                                          'Riyadh, Saudi Arabia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 165.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 10.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170.w,
                                      height: 100.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "Images/HomePage/Shops/my requests/apple.png"),
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Apple Store',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        Text(
                                          'Riyadh, Saudi Arabia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
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
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All the places',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
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
                                const AllShopsScreen()));
                  },
                  child: Text(
                    'See All',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 11.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    // shadows: const [
                    //   BoxShadow(
                    //     color: Color(0x26000000),
                    //     blurRadius: 2,
                    //     offset: Offset(0, 0),
                    //     spreadRadius: 0,
                    //   )
                    // ],
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffF1EBF8),
                          suffixIcon: const Icon(Icons.search_outlined,
                              size: 27, color: Color(0xFF6E34B8)),
                          hintText: 'Find stores',
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
            SizedBox(
              height: 200.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 192.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 10.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170.w,
                                      height: 100.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "Images/HomePage/Stores/HUAWEI Store.png"),
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'HUAWEI Store',
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
                                            fontSize: 12.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg"),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Stores/Bulb.svg"),
                                        ),
                                        SizedBox(width: 3.w),
                                        Text(
                                          'Electronics',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        SizedBox(width: 3.w),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Distance: ',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF5A5D61),
                                                  fontSize: 11.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.12,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '1 kilometer',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF12161C),
                                                  fontSize: 11.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 192.h,
                          width: 170.w,
                          padding: EdgeInsets.only(bottom: 10.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 2,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                height: 100.h,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170.w,
                                      height: 100.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "Images/HomePage/Stores/Apple Store.png"),
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.r, left: 10.r, bottom: 5.r),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Apple Store',
                                          style: TextStyle(
                                            color: const Color(0xFF12161C),
                                            fontSize: 12.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/starr.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg"),
                                        SizedBox(width: 3.w),
                                        SvgPicture.asset(
                                            "Images/HomePage/Stores/staroutline.svg"),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Stores/Bulb.svg"),
                                        ),
                                        SizedBox(width: 3.w),
                                        Text(
                                          'Electronics',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 14.w,
                                          height: 14.h,
                                          child: SvgPicture.asset(
                                              "Images/HomePage/Shops/my requests/Map_Pin.svg"),
                                        ),
                                        SizedBox(width: 3.w),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Distance: ',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF5A5D61),
                                                  fontSize: 11.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.12,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '1 kilometer',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF12161C),
                                                  fontSize: 11.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
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
                    ),
                  ),
                ],
              ),
            ),

            ///////////////////////////
          ]),
        ),
      ),
    );
  }
}

import 'package:eldaftar_app/Home_Screen/The_Shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Home_Screen/Chat_Screen/Chat_Screen.dart';
import 'Stores_Screen.dart';

class ViewStoreScreen extends StatelessWidget {
  const ViewStoreScreen({super.key});

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
                    builder: (BuildContext context) => const StoresScreen()));
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
          'View store',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                SvgPicture.asset("Images/NavBar/Heart.BOLD.svg"),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SvgPicture.asset("Images/HomePage/Stores/starr.svg",
                    height: 25),
                SizedBox(width: 3.w),
                SvgPicture.asset("Images/HomePage/Stores/starr.svg",
                    height: 25),
                SizedBox(width: 3.w),
                SvgPicture.asset("Images/HomePage/Stores/starr.svg",
                    height: 25),
                SizedBox(width: 3.w),
                SvgPicture.asset("Images/HomePage/Stores/staroutline.svg",
                    height: 25),
                SizedBox(width: 3.w),
                SvgPicture.asset("Images/HomePage/Stores/staroutline.svg",
                    height: 25),
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
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const TheShopScreen()));
              },
              color: const Color(0xffF1EBF8),
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
                      'My Invoices',
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
                        "Images/HomePage/purchase/File_Document.svg")
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}

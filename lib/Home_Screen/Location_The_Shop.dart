import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'The_Shop.dart';

class LocationTheShop extends StatefulWidget {
  const LocationTheShop({super.key});

  @override
  State<LocationTheShop> createState() => _LocationTheShopState();
}

class _LocationTheShopState extends State<LocationTheShop> {
  List<Marker> markers = [
    const Marker(
        markerId: MarkerId("1"), position: LatLng(24.713552, 46.675297))
  ];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(24.713552, 46.675297),
    zoom: 14.4746,
  );
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
                    builder: (BuildContext context) => const TheShopScreen()));
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
          'Shop',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 470.h,
            width: double.infinity,
            child: SizedBox(
              height: 350.h,
              child: GoogleMap(
                mapType: MapType.normal,
                markers: markers.toSet(),
                initialCameraPosition: cameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 140.h,
                padding: EdgeInsets.only(
                  top: 20.r,
                  left: 20.r,
                  right: 20.r,
                  bottom: 40.r,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.w),
                      topRight: Radius.circular(8.w),
                    ),
                  ),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HUAWEI Store',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Icon(
                        Icons.share_outlined,
                        color: Color(0xFF6E34B8),
                      )
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            padding: EdgeInsets.all(8.r),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF1EBF8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.w)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 24.w,
                                  height: 24.h,
                                  child: SvgPicture.asset(
                                      "Images/HomePage/the shop/Global.svg"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Store location',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.h),
                          Wrap(
                            children: [
                              Text(
                                '2972 Aga, Elmansoura, Egypt',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}

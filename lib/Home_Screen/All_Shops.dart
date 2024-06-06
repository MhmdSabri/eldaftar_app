import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Shops_Screen.dart';
import 'The_Shop.dart';

class AllShopsScreen extends StatefulWidget {
  const AllShopsScreen({super.key});

  @override
  State<AllShopsScreen> createState() => _AllShopsScreenState();
}

class _AllShopsScreenState extends State<AllShopsScreen> {
  List storeImages = [
    "Images/HomePage/Stores/HUAWEI Store.png",
    "Images/HomePage/Stores/Apple Store.png",
    "Images/HomePage/Stores/BMW Store.png",
    "Images/HomePage/Stores/SANDWICHES.png",
    "Images/HomePage/Stores/Makeup Store.png",
    "Images/HomePage/Stores/Adidas.png",
  ];
  List storeName = [
    "HUAWEI Store",
    "Apple Store",
    "BMW Store",
    "SANDWICHES",
    "Makeup Store",
    "Adidas",
  ];
  List rateIcon = [
    "Images/HomePage/Stores/starr.svg",
    "Images/HomePage/Stores/starr.svg",
    "Images/HomePage/Stores/starr.svg",
    "Images/HomePage/Stores/staroutline.svg",
    "Images/HomePage/Stores/staroutline.svg",
  ];
  List categoryIcon = [
    "Images/HomePage/Stores/Bulb.svg",
    "Images/HomePage/Stores/Bulb.svg",
    "Images/HomePage/Stores/Bulb.svg",
    "Images/HomePage/Stores/Bulb.svg",
    "Images/HomePage/Stores/Bulb.svg",
    "Images/HomePage/Stores/Bulb.svg",
  ];
  List category = [
    "Electronics",
    "Electronics",
    "Electronics",
    "Electronics",
    "Electronics",
    "Electronics",
  ];
  List locationIcon = [
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
    "Images/HomePage/Shops/my requests/Map_Pin.svg",
  ];
  List locationName = [
    "Distance",
    "Distance",
    "Distance",
    "Distance",
    "Distance",
    "Distance",
  ];
  List distance = [
    "1 kilometer",
    "1 kilometer",
    "1 kilometer",
    "1 kilometer",
    "1 kilometer",
    "1 kilometer",
  ];

  String? rate;
  // String? rate2;
  // String? rate3;
  // String? rate4;
  // String? rate5;
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
                    builder: (BuildContext context) => const ShopsScreen()));
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
          'All Shops',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.r, top: 5.r, bottom: 5.r),
            child: SizedBox(
                width: 22.w,
                height: 25.h,
                child: SvgPicture.asset("Images/HomePage/Shops/Qr_Code.svg")),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(children: [
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
                    showModalBottomSheet(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.w),
                              topRight: Radius.circular(15.w))),
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setState) => SizedBox(
                            height:
                                MediaQuery.of(context).copyWith().size.height *
                                    0.77,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                children: [
                                  SizedBox(height: 10.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Distance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 16.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'From ',
                                              style: TextStyle(
                                                color: const Color(0xFF5A5D61),
                                                fontSize: 13.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'furthest',
                                              style: TextStyle(
                                                color: const Color(0xFF12161C),
                                                fontSize: 13.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' to ',
                                              style: TextStyle(
                                                color: const Color(0xFF5A5D61),
                                                fontSize: 13.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'nearest',
                                              style: TextStyle(
                                                color: const Color(0xFF12161C),
                                                fontSize: 13.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 10.w),
                                      SvgPicture.asset(
                                          "Images/HomePage/Shops/Arrow_Reload_02.svg")
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Distance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 16.sp,
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
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                      SizedBox(width: 80.w),
                                      Row(
                                        children: [
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                      SizedBox(width: 80.w),
                                      Row(
                                        children: [
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                      SizedBox(width: 80.w),
                                      Row(
                                        children: [
                                          const Icon(Icons.check_box_outlined),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Electronics',
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
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Evaluation',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 16.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color(0xFF5A5D61),
                                    ),
                                    child: Flexible(
                                      fit: FlexFit.loose,
                                      child: RadioListTile(
                                        activeColor: const Color(0xFF6E34B8),
                                        contentPadding:
                                            EdgeInsets.only(left: 1.w),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        title: const Row(
                                          children: [Icon(Icons.star_border)],
                                        ),
                                        value: "Adress1",
                                        groupValue: rate,
                                        onChanged: (val) {
                                          setState(() {
                                            rate = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color(0xFF5A5D61),
                                    ),
                                    child: Flexible(
                                      fit: FlexFit.loose,
                                      child: RadioListTile(
                                        activeColor: const Color(0xFF6E34B8),
                                        contentPadding:
                                            EdgeInsets.only(left: 1.w),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        title: Row(
                                          children: [
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border)
                                          ],
                                        ),
                                        value: "Adress2",
                                        groupValue: rate,
                                        onChanged: (val) {
                                          setState(() {
                                            rate = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color(0xFF5A5D61),
                                    ),
                                    child: Flexible(
                                      fit: FlexFit.loose,
                                      child: RadioListTile(
                                        activeColor: const Color(0xFF6E34B8),
                                        contentPadding:
                                            EdgeInsets.only(left: 1.w),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        title: Row(
                                          children: [
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border)
                                          ],
                                        ),
                                        value: "Adress3",
                                        groupValue: rate,
                                        onChanged: (val) {
                                          setState(() {
                                            rate = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color(0xFF5A5D61),
                                    ),
                                    child: Flexible(
                                      fit: FlexFit.loose,
                                      child: RadioListTile(
                                        activeColor: const Color(0xFF6E34B8),
                                        contentPadding:
                                            EdgeInsets.only(left: 1.w),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        title: Row(
                                          children: [
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border)
                                          ],
                                        ),
                                        value: "Adress4",
                                        groupValue: rate,
                                        onChanged: (val) {
                                          setState(() {
                                            rate = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color(0xFF5A5D61),
                                    ),
                                    child: Flexible(
                                      fit: FlexFit.loose,
                                      child: RadioListTile(
                                        activeColor: const Color(0xFF6E34B8),
                                        contentPadding:
                                            EdgeInsets.only(left: 1.w),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        title: Row(
                                          children: [
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.star_border)
                                          ],
                                        ),
                                        value: "Adress5",
                                        groupValue: rate,
                                        onChanged: (val) {
                                          setState(() {
                                            rate = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          color: const Color(0xFF6E34B8),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.w)),
                                          textColor: Colors.white,
                                          height: 42.h,
                                          // minWidth: 165.w,
                                          child: Text(
                                            'Apply',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
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
                                          color: const Color(0xffF1EBF8),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.w)),
                                          textColor: Colors.white,
                                          height: 42.h,
                                          // minWidth: 165.w,
                                          child: Text(
                                            'Cancel',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF6E34B8),
                                              fontSize: 16.sp,
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
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: SvgPicture.asset("Images/HomePage/Stores/Filter.svg"))
            ],
          ),
          SizedBox(height: 10.h),
          Flexible(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.55),
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 15.w),
              itemCount: storeImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TheShopScreen()));
                  },
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
                                      image: DecorationImage(
                                        image: AssetImage(storeImages[index]),
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
                                        storeName[index],
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
                                            categoryIcon[index]),
                                      ),
                                      SizedBox(width: 3.w),
                                      Text(
                                        category[index],
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
                                            locationIcon[index]),
                                      ),
                                      SizedBox(width: 3.w),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: locationName[index],
                                              style: TextStyle(
                                                color: const Color(0xFF5A5D61),
                                                fontSize: 11.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0.12,
                                              ),
                                            ),
                                            TextSpan(
                                              text: distance[index],
                                              style: TextStyle(
                                                color: const Color(0xFF12161C),
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
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}

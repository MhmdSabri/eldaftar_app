import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

import '../Favorite_Screen/Favorite_Screen.dart';
import '../Home_Screen/All_Shops.dart';
import '../Home_Screen/Home.dart';
import '../Loans _Screens/Add_Loan_Details_Screen.dart';
import '../Loans _Screens/Debtor_Screen.dart';
import '../Payment_Request/My_Requests_Screen.dart';
// import '../Payment_Request/Payment_Request_3.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  // bool status = false;

  int selectedindex = 0;
  int? index;
  List pages = [
    const HomeScreen(),
    const MyRequestsScreen(),
    const FavoriteScreen(),
    const AllShopsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      floatingActionButton: SpeedDial(
        curve: Curves.bounceIn,
        overlayColor: null,
        overlayOpacity: 0.5,
        // onOpen: () => print('OPENING DIAL'),
        // onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: const Color(0xFF6E34B8),
        // foregroundColor: Colors.black,
        elevation: 2,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          borderSide: BorderSide(width: 2.2.r, color: Colors.white),
        ),
        children: [
          SpeedDialChild(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.w)),
                borderSide: BorderSide(width: 2.r, color: Colors.white),
              ),
              child: const Icon(
                Icons.download_sharp,
                color: Color(0xFF6E34B8),
                size: 25,
              ),
              backgroundColor: const Color(0xffF1EBF8),
              label: 'Debtor',
              labelStyle:
                  TextStyle(fontSize: 14.sp, color: const Color(0xFF6E34B8)),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const DebtorScreen()))),
          SpeedDialChild(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.w)),
                borderSide: BorderSide(width: 2.r, color: Colors.white),
              ),
              child: const Icon(
                Icons.upload_sharp,
                color: Color(0xFF6E34B8),
                size: 25,
              ),
              backgroundColor: const Color(0xffF1EBF8),
              label: 'Creditor',
              labelStyle:
                  TextStyle(fontSize: 14.sp, color: const Color(0xFF6E34B8)),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AddLoanDetailsScreen()))),
        ],
        child: SvgPicture.asset("Images/NavBar/FAB/Vector.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          elevation: 30,
          color: const Color(0xffFFFFFF),
          height: 55.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  // width: 70.w,
                  height: 43.h,
                  child: IconButton(
                      icon: selectedindex == 0
                          ? Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 40.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 3.h),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.w)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "Images/NavBar/House_BOLD.svg",
                                          fit: BoxFit.fill),
                                      SizedBox(width: 2.w),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 10.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : SvgPicture.asset(
                              "Images/NavBar/House_01.svg",
                            ),
                      onPressed: () {
                        setState(() {
                          onIconPressed(0);
                        });
                      }),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 75.w,
                  height: 43.h,
                  child: IconButton(
                      icon: selectedindex == 1
                          ? Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 40.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 3.h),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.w)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "Images/NavBar/send.BOLD.svg",
                                          fit: BoxFit.fill),
                                      // SizedBox(width: 2.w),
                                      Text(
                                        'Requests',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 8.7.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : SvgPicture.asset("Images/NavBar/send.svg"),
                      onPressed: () {
                        setState(() {
                          onIconPressed(1);
                        });
                      }),
                ),
              ),
              SizedBox(width: 40.w),
              Expanded(
                child: SizedBox(
                  // width: 77.w,
                  height: 43.h,
                  child: IconButton(
                      icon: selectedindex == 2
                          ? Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 40.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 3.h),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.w)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "Images/NavBar/Heart.BOLD.svg",
                                          fit: BoxFit.fill),
                                      SizedBox(width: 2.w),
                                      Text(
                                        'Favorite',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 9.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : SvgPicture.asset("Images/NavBar/Heart.svg"),
                      onPressed: () {
                        setState(() {
                          onIconPressed(2);
                        });
                      }),
                ),
              ),
              Expanded(
                child: SizedBox(
                  // width: 75.w,
                  height: 40.h,
                  child: IconButton(
                      icon: selectedindex == 3
                          ? Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 40.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 3.h),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1EBF8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.w)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "Images/NavBar/Settings.BOLD.svg",
                                          fit: BoxFit.fill),
                                      SizedBox(width: 2.w),
                                      Text(
                                        'Setting',
                                        style: TextStyle(
                                          color: const Color(0xFF6E34B8),
                                          fontSize: 10.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : SvgPicture.asset("Images/NavBar/Settings.svg"),
                      onPressed: () {
                        setState(() {
                          onIconPressed(3);
                        });
                      }),
                ),
              ),
            ],
          )),
      backgroundColor: Colors.white,
    );
  }

  void onIconPressed(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}

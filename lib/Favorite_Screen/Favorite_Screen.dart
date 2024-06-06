import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../NavBar/NavBar.dart';
import 'Clients_Screen.dart';
import 'Stores_Screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var controller = PageController();
  bool click = true;
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
            // Navigator.pop(
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext context) => const NavBarScreen()));
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
          'Favorite',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF6E34B8),
            fontSize: 14.5.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40.h,
                  padding: EdgeInsets.all(5.w),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1EBF8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            controller.previousPage(
                                curve: Curves.fastEaseInToSlowEaseOut,
                                duration: const Duration(microseconds: 300));
                            setState(() {
                              click = true;
                            });
                          },
                          child: Container(
                            height: 35.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            decoration: ShapeDecoration(
                              color: click
                                  ? const Color(0xFF6E34B8)
                                  : const Color(0xFFF1EBF8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Stores',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: click
                                        ? Colors.white
                                        : const Color(0xFF12161C),
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                curve: Curves.fastEaseInToSlowEaseOut,
                                duration: const Duration(microseconds: 300));
                            setState(() {
                              click = false;
                            });
                          },
                          child: Container(
                            height: 35.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            decoration: ShapeDecoration(
                              color: !click
                                  ? const Color(0xFF6E34B8)
                                  : const Color(0xFFF1EBF8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.w),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Clients',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: !click
                                        ? Colors.white
                                        : const Color(0xFF12161C),
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  StoresScreen(),
                  ClientsScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

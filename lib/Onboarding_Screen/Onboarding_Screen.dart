import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Login_Screen/login.dart';

class BoardingModel {
  final String image;
  final String title1;
  final String title2;
  final String sub;
  final String buttonsub;

  BoardingModel({
    required this.image,
    required this.title1,
    required this.title2,
    required this.sub,
    required this.buttonsub,
  });
}

bool isLast = false;

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  var controller = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
        image: "Images/Onboarding_screen/Onboarding1.png",
        title1: "Billing",
        title2: "Managementre!",
        sub:
            "Easily manage postpaid bills for multiple merchants on our convenient platform for customers",
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding_screen/Onboarding2.png",
        title1: "App-based",
        title2: "payments!",
        sub:
            "Make secure and convenient payments through our user-friendly and reliable application",
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding_screen/Onboarding3.png",
        title1: "Set",
        title2: "Reminders!",
        sub:
            "Set reminders for payments and collections with our app for all users",
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding_screen/Onboarding4.png",
        title1: "Customer",
        title2: "Accounts!",
        sub:
            "Create customer accounts, manage balances, and add funds via merchant integration for convenience",
        buttonsub: "Start"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 630.h,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemBuilder: (context, index) =>
                  buildBordingItem(boarding[index]),
              itemCount: boarding.length,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: boarding.length,
                axisDirection: Axis.horizontal,
                effect: ScaleEffect(
                    activePaintStyle: PaintingStyle.stroke,
                    activeDotColor: const Color(0xFF6E34B8),
                    dotColor: const Color(0xFF6E34B8),
                    dotHeight: 7.h,
                    dotWidth: 7.w,
                    radius: 25.r,
                    scale: 1.8),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBordingItem(BoardingModel model) => Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 430.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(model.image), fit: BoxFit.fill)),
              ),
            ],
          ),
          Positioned(
              top: 360.h,
              right: 20.w,
              left: 20.w,
              child: Container(
                height: 250.h,
                width: 260.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.w)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 30.r, bottom: 20.r, left: 15.r, right: 15.r),
                  child: Column(children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 280.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                model.title1,
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 25.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  model.title2,
                                  style: TextStyle(
                                    color: const Color(0xFF6E34B8),
                                    fontSize: 25.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Column(
                      children: [
                        SizedBox(
                          width: 280.w,
                          height: 60.h,
                          child: Text(
                            model.sub,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35.h),
                    MaterialButton(
                      onPressed: () {
                        if (isLast) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginScreen()));
                        } else {
                          controller.nextPage(
                              duration: const Duration(microseconds: 300),
                              curve: Curves.fastEaseInToSlowEaseOut);
                        }
                      },
                      color: const Color(0xFF6E34B8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r)),
                      textColor: Colors.white,
                      height: 42.h,
                      minWidth: double.infinity,
                      child: Text(
                        model.buttonsub,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.5.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]),
                ),
              )),
          SizedBox(height: 10.h),
        ],
      );
}

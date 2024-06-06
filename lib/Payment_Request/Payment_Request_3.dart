import 'package:eldaftar_app/Payment_Request/Payment_Request_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Home_Screen/Shops_Screen.dart';

class PaymentRequest3 extends StatefulWidget {
  const PaymentRequest3({super.key});

  @override
  State<PaymentRequest3> createState() => _PaymentRequest3State();
}

class _PaymentRequest3State extends State<PaymentRequest3> {
  String? payment;
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
          'Payment request',
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
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Branch Selection',
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
            SizedBox(height: 15.h),
            Column(
              children: [
                ExpansionTile(
                    childrenPadding: EdgeInsets.zero,
                    // backgroundColor: const Color(0xffF1EBF8),

                    collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        side: BorderSide(
                          color: const Color(0x19000000).withOpacity(0.05),
                        )),
                    collapsedIconColor: const Color(0xFF6E34B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        side: BorderSide(
                          color: const Color(0x19000000).withOpacity(0.05),
                        )),
                    iconColor: const Color(0xFF6E34B8),
                    title: Container(
                      width: double.infinity,
                      height: 40.h,
                      padding:
                          EdgeInsets.only(left: 10.r, top: 5.r, bottom: 5.r),
                      decoration: ShapeDecoration(
                        color: const Color(0xffF1EBF8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Select the branch',
                            style: TextStyle(
                              color: const Color(0xFF6E34B8),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    children: [
                      ListTile(
                          title: Column(
                        children: [
                          SizedBox(height: 15.h),
                          Row(
                            children: [
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
                          Divider(
                            color: const Color(0xFFEBEBEC),
                            height: 1.h,
                            thickness: 1.r,
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            children: [
                              Text(
                                'Riyadh branch',
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
                          Divider(
                            color: const Color(0xFFEBEBEC),
                            height: 1.h,
                            thickness: 1.r,
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            children: [
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
                          Divider(
                            color: const Color(0xFFEBEBEC),
                            height: 1.h,
                            thickness: 1.r,
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            children: [
                              Text(
                                'Jazan branch',
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
                        ],
                      ))
                    ]),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Payment method',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF12161C),
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
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: const Color(0xFF6E34B8),
                      ),
                      child: Radio(
                        activeColor: const Color(0xFF6E34B8),
                        value: "mon",
                        groupValue: payment,
                        onChanged: (value) {
                          setState(() {
                            payment = value;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Monthly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 11.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60.w),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: const Color(0xFF6E34B8),
                      ),
                      child: Radio(
                        activeColor: const Color(0xFF6E34B8),
                        value: "Weekly",
                        groupValue: payment,
                        onChanged: (value) {
                          setState(() {
                            payment = value;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Weekly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 11.sp,
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
                Text(
                  'Message',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFD71CDB))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFD71CDB))),
                contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 15.w, 10.h),
                hintText: 'Write your message here',
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text(
                  'Optional',
                  style: TextStyle(
                    color: const Color(0xFFC1C2C3),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const PaymentRequest4()));
              },
              color: const Color(0xFF6E34B8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r)),
              textColor: Colors.white,
              height: 42.h,
              minWidth: double.infinity,
              child: Text(
                'Next',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 40.h),
          ]),
        ),
      ),
    );
  }
}

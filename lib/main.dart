// ignore_for_file: unused_import

import 'package:eldaftar_app/Onboarding_Screen/Onboarding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Customer_Follow-up_Screen/Blacklisted_Customers.dart';
import 'Customer_Follow-up_Screen/Current_Customers_Screen.dart';
import 'Customer_Follow-up_Screen/Customer_Follow-up_Screen.dart';
import 'Customer_Follow-up_Screen/FollowUP_Invoices.dart';
import 'NavBar/Favorite_Screen/Clients_Screen.dart';
import 'NavBar/Favorite_Screen/Favorite_Screen.dart';
import 'NavBar/Favorite_Screen/Stores_Screen.dart';
import 'NavBar/Favorite_Screen/View_Store.dart';
import 'Home_Screen/All_Shops.dart';
import 'Home_Screen/Chat_Screen/Chat_Screen.dart';
import 'Home_Screen/Chat_Screen/Personal_Converstaion_Screen.dart';
import 'Home_Screen/Home.dart';
import 'Home_Screen/Location_The_Shop.dart';
import 'Home_Screen/Notifications_Screen.dart';
import 'Home_Screen/Offers_Screen/Create_Offer_Screen.dart';
import 'Home_Screen/Offers_Screen/Offers_Screen.dart';
import 'Home_Screen/Shops_Screen.dart';
import 'Home_Screen/The_Branch_Screen.dart';
import 'Home_Screen/The_Shop.dart';
import 'Invoices_Screen/Current_Invoices_Screen.dart';
import 'Invoices_Screen/Expired_Invoices_Screen.dart';
import 'Invoices_Screen/Invoices_Screen.dart';
import 'Invoices_Screen/New_Invoices_Screen.dart';
import 'Invoices_Screen/Rejected_Invoices_Screen.dart';
import 'Loans _Screens/Add_Loan_Details_Screen.dart';
import 'Loans _Screens/Approval_Of_Loan.dart';
import 'Loans _Screens/Borrow_List_Screen.dart';
import 'Loans _Screens/Debtor_Screen.dart';
import 'Loans _Screens/Loan_Details.dart';
import 'Loans _Screens/Loan_Details_Screen_Two.dart';
import 'Loans _Screens/Loan_List_Screen.dart';
import 'Login_Screen/New_Password.dart';
import 'Login_Screen/VerificationLOGIN.dart';
import 'Login_Screen/login.dart';
import 'NavBar/NavBar.dart';
import 'NavBar/Settings_Screen/About_The_App.dart';
import 'NavBar/Settings_Screen/Change_Password_Screen.dart';
import 'NavBar/Settings_Screen/Connect_With_Us.dart';
import 'NavBar/Settings_Screen/Current_Password_Screen.dart';
import 'NavBar/Settings_Screen/Follow_My_Account.dart';
import 'NavBar/Settings_Screen/OTP_Change_Password.dart';
import 'NavBar/Settings_Screen/OTP_Delete_Account.dart';
import 'NavBar/Settings_Screen/Select_The_Banch_Address.dart';
import 'NavBar/Settings_Screen/Statistics_Screen.dart';
import 'NavBar/Settings_Screen/Store_Settings_Screen.dart';
import 'NavBar/Settings_Screen/Terms_And_Conditions.dart';
import 'NavBar/Settings_Screen/The number of daily alert times.dart';
import 'Pay_Now/Confirm_Bill_Payment.dart';
import 'Pay_Now/QR_And_Code.dart';
import 'Payment_Request/My_Requests_Screen.dart';
import 'Payment_Request/New_Request.dart';
import 'Payment_Request/Payment_Request_3.dart';
import 'Payment_Request/Payment_Request_4.dart';
import 'Payment_Request/Request_Approved.dart';
import 'Payment_Request/Request_Pending.dart';
import 'Payment_Request/Request_Rejected_Screen.dart';
import 'Receive_The_Purchase_List/New_purchase_Requests.dart';
import 'Receive_The_Purchase_List/Previous_Purchase_Requests.dart';
import 'Receive_The_Purchase_List/Receive_The_Purchase_List.dart';
import 'Receiving_Payment_Request/New_Requests_Screen.dart';
import 'Receiving_Payment_Request/Previous_Requests.dart';
import 'Receiving_Payment_Request/Receiving_Payment_Request.dart';
import 'Register/BranshAddressMap2.dart';
import 'Register/Bransh_Address_Map1.dart';
import 'Register/Email_Screen.dart';
import 'Register/NameTheBranchScreen2.dart';
import 'Register/Name_The_Branch.dart';
import 'Register/Password_Screen.dart';
import 'Register/PhoneNumber_Screen.dart';
import 'Register/Register_Screen.dart';
import 'Register/Store_Address_Map1.dart';
import 'Register/Tax_Registration_Screen.dart';
import 'Register/Verification_Email_Screen.dart';
import 'Register/Verification_PhoneNumer.dart';
import 'NavBar/Settings_Screen/Profile_Settings_Screen.dart';
import 'NavBar/Settings_Screen/Settings_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnboardingBody(),
          );
        });
  }
}

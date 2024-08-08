import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intrust_finance_india/drawer_page/cibil_report.dart';
import 'package:intrust_finance_india/profile_page.dart';

class Cibil_Report_Home extends StatefulWidget {
  const Cibil_Report_Home({super.key});

  @override
  State<Cibil_Report_Home> createState() => _Cibil_Report_HomeState();
}

class _Cibil_Report_HomeState extends State<Cibil_Report_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff172554),
        iconTheme: IconThemeData(
          color: Color(0xffCA8A04),
        ),
        title: Image.asset(
          'asset/logo.png',
          height: 40,
        ),
        actions: [
          Icon(
            Icons.qr_code_rounded,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications_active_outlined,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Profile_page()));
            },
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff7b38fb), Color(0xffffce5b)])),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'asset/profileimage.jpg',
                ),
                radius: 25,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff172554),
              Colors.black,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: SvgPicture.asset(
                'asset/cibil_home.svg',
              ),
            ),
            // Text('Monitor & improve your Cibil',style: TextStyle(color: Colors.),,),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: 'Monitor &',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffea912e),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nImprove Your',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    TextSpan(
                        text: '\nCIBIL',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff50e7b7)))
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Securely track and improve your\ncibil score offerlessly',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(Cibil_Report());
                },
                child: Text(
                  'GET STARTED',
                  style: TextStyle(color: Color(0xff6b21a8)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

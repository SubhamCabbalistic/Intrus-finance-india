import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intrust_finance_india/home.dart';
import 'package:intrust_finance_india/profile_page.dart';

class Cibil_Report extends StatefulWidget {
  const Cibil_Report({super.key});

  @override
  State<Cibil_Report> createState() => _Cibil_ReportState();
}

class _Cibil_ReportState extends State<Cibil_Report> {
  var isagreetopay = false.obs;

//Gender Dropdown

  var gender = ''.obs;

  final List<String> gender_options = [
    'Select an option',
    'MALE',
    'FEMALE',
    'OTHER'
  ];

  // void updateGender(String newValue) {
  //   gender.value = newValue!;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff14214a),
                Color(
                  0xff020205,
                ),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 60,
                width: 150,
                child: Image.asset('asset/Cibil-Transunion-Logo.png'),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.white),
              //       borderRadius: BorderRadius.circular(5)),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           width: double.infinity,
              //           height: 50,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5),
              //             color: Color(0xff713f12),
              //           ),
              //           child: Center(
              //             child: Text(
              //               'Get Cibil Report',
              //               style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(),
              //       Expanded(
              //         child: Container(
              //           height: 50,
              //           width: double.infinity,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5),
              //             color: Color(0xff142049),
              //           ),
              //           child: Center(
              //             child: Text(
              //               'Only Cibil Score',
              //               style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 5,
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              //     color: Color(0xff1f2937),
              //     child: Column(
              //       children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 155,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(color: Color(0xff6b7280),),
                                color: Colors.black),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "First Name",
                                hintStyle: TextStyle(
                                  color: Color(0xff6b7280),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.indigo,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  color: Color(0xffBFDBFE),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Color(
                                        0xff6b7280,
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: 155,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                hintStyle: TextStyle(
                                  color: Color(0xff6b7280),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.indigo,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.person_outlined,
                                  color: Color(0xffBFDBFE),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(
                                      0xff6b7280,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xffBFDBFE),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Select State",
                                    style: TextStyle(
                                        color: Color(0xffBFDBFE), fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xffBFDBFE),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Select State",
                                    style: TextStyle(
                                        color: Color(0xffBFDBFE), fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xffBFDBFE),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Select State",
                                    style: TextStyle(
                                        color: Color(0xffBFDBFE), fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xffBFDBFE),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Select State",
                                    style: TextStyle(
                                        color: Color(0xffBFDBFE), fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 155,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "ID Number",
                                hintStyle: TextStyle(
                                  color: Color(0xff6b7280),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                prefixIcon: Icon(
                                  Icons.credit_card_rounded,
                                  color: Color(0xffBFDBFE),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: 155,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Date of Birth",
                                hintStyle: TextStyle(
                                  color: Color(0xff6b7280),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                prefixIcon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Color(0xffBFDBFE),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 155,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff6b7280)),
                                color: Colors.black),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle: TextStyle(
                                  color: Color(0xff6b7280),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                prefixIcon: Icon(
                                  Icons.location_on_rounded,
                                  color: Color(0xffBFDBFE),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xff6b7280),
                                ),
                                color: Colors.black),
                            child:
                            // Obx(
                            //   () => DropdownButton(
                            //     items: gender_options
                            //         .map<DropdownMenuItem<String>>(
                            //             (String value) {
                            //       return DropdownMenuItem<String>(
                            //         child: Text(value),
                            //       );
                            //     }).toList(),
                            //     onChanged: (newValue) {
                            //       gender.value = newValue!;
                            //     },
                            //   ),
                            // ),
                            // Obx(() =>  DropdownButton(
                            //     value: gender.value ,
                            //     onChanged: (newValue) {
                            //       gender.value = newValue!;
                            //       print(gender.value);
                            //     },
                            //     items: gender_options
                            //         .map<DropdownMenuItem<String>>(
                            //             (String value) {
                            //       return DropdownMenuItem<String>(
                            //         value: value,
                            //         child: Text(value),
                            //       );
                            //     }).toList(),
                            //   ),
                            // )

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.map_outlined,
                                    color: Color(0xffBFDBFE),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Select State",
                                    style: TextStyle(
                                        color: Color(0xffBFDBFE), fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          // ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 155,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Color(0xff6b7280)),
                              color: Colors.black),
                          child: TextField(
                            decoration: InputDecoration(

                              hintText: "Pincode",
                              hintStyle: TextStyle(
                                color: Color(0xff6b7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                              
                              prefixIcon: Icon(
                                Icons.list,
                                color: Color(0xffBFDBFE),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Container(
                    //   height: 35,
                    //   width: double.infinity,
                    //   color: Color(0xffa16207),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Text(
                    //       'Cibil Report Charges : ₹550 Ontime',
                    //       style: TextStyle(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w400,
                    //           color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            activeColor: Colors.blue,
                            focusColor: Colors.blue,
                            value: isagreetopay.value,
                            onChanged: (newValue) {
                              isagreetopay.value = newValue!;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "I agree to pay and terms of use",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Container(
                        child: Column(
                          children: [
                            Divider(
                              color: Color(0xff26292f),
                              thickness: 0.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Cibil Report Charges',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Text(
                                    '₹550',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xff26292f),
                              thickness: 0.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'GST Charges 18%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Text(
                                    '₹99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xff26292f),
                              thickness: 0.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Plateform Charges 2%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Text(
                                    '₹11',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xff26292f),
                              thickness: 0.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Total Payble',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Text(
                                    '₹660',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff5cb85c)),
                      child: Center(
                        child: Text(
                          "GET REPORT",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              //       Container(
              //         height: 2,
              //         width: double.infinity,
              //         color: Color(0xff5cb85c),
              //       )
              //     ],
              //   ),
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

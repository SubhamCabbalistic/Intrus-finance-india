import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intrust_finance_india/bottom_navigation.dart';
import 'package:intrust_finance_india/login.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  bool _isExpended = false;

  void toggleExpension() {
    setState(() {
      _isExpended = !_isExpended;
    });
  }

  bool _showContainer = false;

  void toggleContainer() {
    setState(() {
      _showContainer = !_showContainer;
    });
  }

  var selectedImagePath = ''.obs;
// final  ImagePickerController controller = Get.put(ImagePickerController());
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImagePath.value = image.path;
    }
  }

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
          Container(
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
                Color(0xff020205),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => pickImage(),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      image: selectedImagePath.value.isNotEmpty
                          ? DecorationImage(
                              image: FileImage(File(selectedImagePath.value)),
                              fit: BoxFit.contain,
                            )
                          : null,
                    ),
                    child: selectedImagePath.value.isEmpty
                        ? Center(
                            child: Container(
                              padding: EdgeInsetsDirectional.all(5.0),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xff8a2be2)),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  'asset/profileimage.jpg',
                                ),
                                radius: 25,
                              ),
                            ),
                          )
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Subham Rawat",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff173bcf),
                ),
              ),
              Text(
                '8737099712',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff173bcf),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff1f2937),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Receive Rewards',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'USER ID :',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: toggleExpension,
                          icon: Icon(
                            _isExpended
                                ? Icons.keyboard_arrow_down_outlined
                                : Icons.arrow_forward_ios,
                            color: Color(0xff816019),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    if (_isExpended)
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: SvgPicture.asset(
                            'asset/QR_code.svg',
                          ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff1f2937),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Complete Your Profile',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Tell us more about yourself and get personalised and rewards',
                              style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: toggleContainer,
                          icon: Icon(
                            _showContainer ? Icons.add : Icons.add,
                            color: Color(0xff816019),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    if (_showContainer)
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mobile",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Mobile",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff5cb85c),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                'UPDATE PROFILE',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Loginpage());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff1f2937),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: Color(0xff816019),
                        size: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Custom_Bottom_Navigation(),
    );
  }
}

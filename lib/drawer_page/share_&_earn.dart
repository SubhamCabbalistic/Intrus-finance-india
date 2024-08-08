import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intrust_finance_india/profile_page.dart';

class Sharepage extends StatefulWidget {
  const Sharepage({super.key});

  @override
  State<Sharepage> createState() => _SharepageState();
}

class _SharepageState extends State<Sharepage> {
  var isVisible = true.obs;

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff172554), Colors.black],
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              color: Color(0xff1f2937),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('asset/refer_banner.webp'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Refer a friends and family',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "1. Send your friends a referral link \n2. Wait for them to register \n3. Get rewart upto 500! 🎉",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'https://intrustfinanceindia.com/ref/N2Kg4',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        // Spacer(),
                        // TextButton(onPressed: (){}, child: Text('Copy'),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff36d467),
                        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(5))
                      ),
                      child: Text(
                        'Share your link',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intrust_finance_india/bottom_navigation.dart';
import 'package:intrust_finance_india/profile_page.dart';

class Electricity_Bill extends StatefulWidget {
  const Electricity_Bill({super.key});

  @override
  State<Electricity_Bill> createState() => _Electricity_BillState();
}

class _Electricity_BillState extends State<Electricity_Bill> {
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
          SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.indigo.shade800,
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.indigo.shade800,
                    ),
                  ),
                ),
              ),
            ),
            // Divider(
            //   color: Colors.grey.shade500,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff14214a),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade800,
                      ),
                      // color: Colors.red,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child:
                              Center(child: Icon(Icons.electric_bolt_outlined)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Uttar Pardesh Power Corporation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Custom_Bottom_Navigation(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intrust_finance_india/home.dart';

class EMI_Calculator extends StatefulWidget {
  const EMI_Calculator({super.key});

  @override
  State<EMI_Calculator> createState() => _EMI_CalculatorState();
}

class _EMI_CalculatorState extends State<EMI_Calculator> {
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
      body: Column(
        children: [
          Container(
            color: Color(0xff1f2937),
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Loan Amount:',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Loan Amount",
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Interest Rate:',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Interest Rate",
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Loan Term(in months):',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Loan Term",
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff555c69),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 135,
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff4caf50),
                        ),
                        child: Center(
                            child: Text(
                          'Calculate EMI',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                      ),
                      SizedBox(width: 10,),
                      Container(
                    width: 80,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff4caf50),
                    ),
                    child: Center(
                        child: Text(
                      'Reset',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  )
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

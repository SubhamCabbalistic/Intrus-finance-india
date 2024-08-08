// import 'package:flutter/material.dart';
// import 'package:intrust_finance_india/profile_page.dart';

// class AppBar extends StatefulWidget {
//   const AppBar({required Color backgroundColor, required IconThemeData iconTheme, required Image title, required List<Widget> actions});

//   @override
//   State<AppBar> createState() => _AppBarState();
// }

// class _AppBarState extends State<AppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//          backgroundColor: Color(0xff172554),
//         iconTheme: IconThemeData(
//           color: Color(0xffCA8A04),
//         ),
//         title: Image.asset(
//           'asset/logo.png',
//           height: 40,
//         ),
//         actions: [
//           Icon(
//             Icons.qr_code_rounded,
//             size: 25,
//             color: Colors.white,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Icon(
//             Icons.notifications_active_outlined,
//             size: 25,
//             color: Colors.white,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Profile_page()));
//                   },
//             child: Container(
//               height: 40,
//               width: 40, 
              
//               padding: EdgeInsets.symmetric(vertical: 5),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.grey,
//                   gradient: LinearGradient(
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                       colors: [Color(0xff7b38fb), Color(0xffffce5b)])),
//               child: CircleAvatar(
//                 backgroundColor: Colors.transparent,
//                 backgroundImage: AssetImage(
//                   'asset/profileimage.jpg',
//                 ),
//                 radius: 25,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 15,
//           ),
//         ],
//     );
//   }
// }
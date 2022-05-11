import 'package:e_book_app/screens/Login/login_page.dart';
import 'package:e_book_app/screens/bottom_nav_bar.dart';
import 'package:e_book_app/screens/home/home_page.dart';
import 'package:e_book_app/screens/home/pages/book_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circulation of periodicals',
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.nameRoute: (context) => LoginPage(),
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetail.nameRoute: (context) => BookDetail(),
      },
    );
  }
}

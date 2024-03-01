import 'package:flutter/material.dart';
import 'login_page.dart';
import 'fraud_detail_Page_2.dart';
import 'Dashboards_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginPage(); // แสดงหน้า Login โดยตรง
    // return Dashboards();
  }
}

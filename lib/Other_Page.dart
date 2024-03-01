import 'package:flutter/material.dart';
import 'register_page.dart';
import 'Edit.dart';

class Other extends StatelessWidget {
  Other({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFcfd7dd), // กำหนดสีของพื้นหลังเป็นสีขาว
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'หน้าอื่น',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

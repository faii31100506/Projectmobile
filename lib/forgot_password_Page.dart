import 'package:flutter/material.dart';

class NewpasswordPage extends StatelessWidget {
  const NewpasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Icon(
              Icons.https,
              size: 70,
              color: Color(0xFF666CFF),
            ),
            SizedBox(height: 50),
            const Text(
              'ลืมรหัสผ่าน',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Username',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8), // ระยะห่างระหว่าง "Email" กับ TextField
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'กรอกชื่อผู้ใช้',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'รหัสผ่าน',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8), // ระยะห่างระหว่าง "Email" กับ TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'กรอกรหัสผ่าน',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF666CFF),
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'ตกลง',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 238, 238, 238),
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Color.fromARGB(255, 78, 78, 78),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              '@2023 All content as copyright reserved.\nสำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย (คปภ.)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

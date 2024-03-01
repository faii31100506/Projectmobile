import 'package:flutter/material.dart';
import 'package:my_flutter_project/Dashboards_Page.dart';
import 'register_page.dart';
import 'forgot_password_Page.dart';
import 'Hub.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController2 = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  login() async {
    String username = usernameController2.text;
    String password = _passwordController.text;

    try {
      var dio = Dio();
      var res = await dio.get(
        'http://localhost:4035/api/nahra/user',
      );

      var filterdata =
          res.data['data'].firstWhere((user) => user['username'] == username);

      if (filterdata['username'] == username) {
        if (filterdata['password'] == password) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Hub()),
          );
        } else {
          showLoginErrorPopup();
        }
      } else {
        showLoginErrorPopup();
      }
    } catch (e) {
      showLoginErrorPopup();
    }
  }

  void showLoginErrorPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('เข้าสู่ระบบไม่สำเร็จ'),
          content: Text('กรุณาตรวจสอบชื่อผู้ใช้งานและรหัสผ่านของคุณ'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ตกลง'),
            ),
          ],
        );
      },
    );
  }

// void _login() {     // Implement your login logic here

//           Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Hub()), // สร้างหน้า Hub หรือหน้าตาอื่น ๆ ที่ต้องการ
//       );

//      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF007c6e), // กำหนดสีของพื้นหลังเป็นสีขาว

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.all(40),
              color: Color.fromARGB(255, 255, 255, 255), // สี Card ที่อยู่ภายใน
              elevation: 5, // เพิ่มเงาให้ Card
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 70),
                    Image.asset(
                      '../assets/login.png',
                      height: 100,
                    ),
                    const SizedBox(height: 70),
                    const Text(
                      'เข้าสู่ระบบ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 40),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: usernameController2,
                            decoration: const InputDecoration(
                              // border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                              enabledBorder: OutlineInputBorder(
                                // กำหนดขนาดขอบ
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                                borderSide: BorderSide(
                                    color: Color(0xFFCAC7C7),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              focusedBorder: OutlineInputBorder(
                                // กำหนดรูปร่างขอบเมื่อมีการโฟกัส
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                                borderSide: BorderSide(
                                    color: Color(0xFF666CFF),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Color(
                                    0xFF4C4E64), // กำหนดสีของตัวหนังสือภายใน TextField ด้วยรหัสสี HEX
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              filled: true, // เพื่อกำหนดพื้นหลังเต็มพื้นที่
                              fillColor:
                                  Colors.white, // กำหนดสีพื้นหลังเป็นสีขาว
                              // prefixIcon: Icon(Icons.search),

                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal:
                                      10.0), // กำหนดระยะห่างของข้อความภายใน TextField
                            ),
                            style: TextStyle(
                              color: Color(0xFF666CFF), // ใช้สีที่เปลี่ยนไว้
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              // border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                              enabledBorder: OutlineInputBorder(
                                // กำหนดขนาดขอบ
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                                borderSide: BorderSide(
                                    color: Color(0xFFCAC7C7),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              focusedBorder: OutlineInputBorder(
                                // กำหนดรูปร่างขอบเมื่อมีการโฟกัส
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                                borderSide: BorderSide(
                                    color: Color(0xFF666CFF),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              labelText: 'กรอกรหัสผ่าน',
                              labelStyle: TextStyle(
                                color: Color(
                                    0xFF4C4E64), // กำหนดสีของตัวหนังสือภายใน TextField ด้วยรหัสสี HEX
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              filled: true, // เพื่อกำหนดพื้นหลังเต็มพื้นที่
                              fillColor:
                                  Colors.white, // กำหนดสีพื้นหลังเป็นสีขาว
                              // prefixIcon: Icon(Icons.search),

                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal:
                                      10.0), // กำหนดระยะห่างของข้อความภายใน TextField
                            ),
                            style: TextStyle(
                              color: Color(0xFF666CFF), // ใช้สีที่เปลี่ยนไว้
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 50),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       GestureDetector(
                    //         onTap: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => const NewpasswordPage(),
                    //             ),
                    //           );
                    //         },
                    //         child: const Text(
                    //           'ลืมรหัสผ่านหรือไม่ ?',
                    //           style: TextStyle(
                    //             color: Color.fromARGB(255, 156, 156, 156),
                    //           ),
                    //         ),
                    //       ),
                    //       const Spacer(),

                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          onPressed: login,
                          // onPressed: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const Hub(),
                          //     ),
                          //   );
                          // },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(hexColor('#4caf50')),
                            minimumSize: const Size(double.infinity, 60),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: const Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'ลงทะเบียน',
                          style: TextStyle(
                            color: Color(0xFF73C088),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 70),
            // Image.asset(
            //   '../assets/login.png',
            //   height: 100,
            // ),
            // const SizedBox(height: 20), // เว้นระยะห่าง
            // const Text(
            //   'เข้าสู่ระบบ',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            const Spacer(),
            // const Text(
            //   '@2023 All content as copyright reserved.\nสำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย (คปภ.)',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 10,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

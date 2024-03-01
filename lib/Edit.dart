import 'package:flutter/material.dart';
import 'Hub.dart';
import 'package:dio/dio.dart';

class Edit extends StatefulWidget {
  final Map<String, dynamic> data;
  Edit({Key? key, required this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EditState();
  }
}

class _EditState extends State<Edit> {
  late Map<String, dynamic> data;

  // Edit({required this.data});
  TextEditingController _productnameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _countController = TextEditingController();
  // TextEditingController _idController = TextEditingController();

  // int getIdFromController() {
  //   String idString = _idController.text;
  //   // คอนเวิร์ต idString เป็น int ด้วยฟังก์ชัน int.parse
  //   int id = int.parse(idString);
  //   return id;
  // }

  @override
  void initState() {
    super.initState();
    data = widget.data;
    // _idController.text = data['id'];
    _productnameController.text = data['productname'];
    _priceController.text = data['price'];
    _countController.text = data['count'];
  }

  login() async {
    // String username = usernameController2.text;
    // String password = _passwordController.text;

    try {
      var dio = Dio();
      var res = await dio.get(
        'http://localhost:4035/api/nahra/user',
      );
    } catch (e) {
      // showLoginErrorPopup();
    }
  }

  void saveData() {
    // ดึงค่าจาก TextEditingController
    String productName = _productnameController.text;
    String price = _priceController.text;
    String count = _countController.text;
    // int id = getIdFromController();
    // ตรวจสอบว่าข้อมูลไม่ว่างเปล่า
    if (productName.isNotEmpty && price.isNotEmpty && count.isNotEmpty) {
      try {
        var dio = Dio();
        var response = dio.put(
          'http://localhost:4035/api/nahra/updatptoduct/' +
              data['id'].toString(),
          data: {
            'productname': productName,
            'price': price,
            'count': count,
          },
        );
        print(response);
        showLoginErrorPopup2();
      } catch (e) {
        print('error: $e');
      }
    } else {
      // แจ้งเตือนหากมีข้อมูลที่ไม่ถูกต้องหรือไม่ครบ
      // print('กรุณากรอกข้อมูลให้ครบทุกช่อง');
      showLoginErrorPopup();
    }
  }

  void showLoginErrorPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('กรุณากรอกข้อมูลให้ครบทุกช่อง'),
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

  void showLoginErrorPopup2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('บันทึกข้อมูลสำเร็จ'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Hub()),
                );
              },
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const Hub(),
              //   ),
              // );
              child: Text('ตกลง'),
            ),
          ],
        );
      },
    );
  }

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
                    const SizedBox(height: 30),
                    Image.asset(
                      '../assets/edit.png',
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'แก้ไข',
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
                          Text(
                            'ชื่อ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextField(
                            controller: _productnameController,
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
                                    color: Color(0xFF4caf50),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              labelText: 'ชื่อสินค้า',
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
                              color: Color(0xFF4caf50), // ใช้สีที่เปลี่ยนไว้
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'ราคา',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextField(
                            controller: _priceController,
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
                                    color: Color(0xFF4caf50),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              labelText: 'ราคา',
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
                              color: Color(0xFF4caf50), // ใช้สีที่เปลี่ยนไว้
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'จำนวนคงเหลือ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextField(
                            controller: _countController,
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
                                    color: Color(0xFF4caf50),
                                    width:
                                        2.0), // กำหนดสีและความกว้างของเส้นขอบ
                              ),
                              labelText: 'จำนวนคงเหลือ',

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
                              color: Color(0xFF4caf50), // ใช้สีที่เปลี่ยนไว้
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const Hub(),
                            //   ),
                            // );
                            saveData();

                            print(data['productname']);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(hexColor('#4caf50')),
                            minimumSize: const Size(double.infinity, 60),
                          ),
                          child: const Text(
                            'บันทึก',
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
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

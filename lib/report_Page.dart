import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Color.fromARGB(255, 241, 241, 241),
              elevation: 8 , // เพิ่มเงาให้ Card

              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'รายงานการสอบสวน',
                      style: TextStyle(
                        fontSize:30,
                        fontWeight: FontWeight.w900,
                        
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                        enabledBorder: OutlineInputBorder( // กำหนดขนาดขอบ
                          borderRadius: const BorderRadius.all(const Radius.circular(12.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                          borderSide: BorderSide(color: Colors.white, width: 2.0), // กำหนดสีและความกว้างของเส้นขอบ
                        ),
                        focusedBorder: OutlineInputBorder( // กำหนดรูปร่างขอบเมื่อมีการโฟกัส
                          borderRadius: const BorderRadius.all(const Radius.circular(12.0)), // กำหนดรูปร่างของขอบด้วย const constructor
                          borderSide: BorderSide(color: Colors.white, width: 2.0), // กำหนดสีและความกว้างของเส้นขอบ
                        ),
                        labelText: 'ค้นหา',
                        labelStyle: TextStyle(
                          color: Color(0xFF4C4E64), // กำหนดสีของตัวหนังสือภายใน TextField ด้วยรหัสสี HEX
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true, // เพื่อกำหนดพื้นหลังเต็มพื้นที่
                        fillColor: Colors.white, // กำหนดสีพื้นหลังเป็นสีขาว
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // กำหนดระยะห่างของข้อความภายใน TextField

                      ),
                    ),
                    
                    
                    SizedBox(height: 8),
                    Card(
                      color: Color.fromARGB(
                          255, 255, 255, 255), // สี Card ที่อยู่ภายใน
                      elevation: 5 , // เพิ่มเงาให้ Card

                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                height: 50,
                                image: AssetImage('../assets/uncom.png')
                                ) ,
                                
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'รายการขออนุมัติและอยู่ระหว่งการสอบสวน',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF1AD29),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('../assets/avatar.png'),
                                  radius: 16, // ขนาดของวงกลม
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผู้ทำประกัน : นางกุญชร อุบลโชติ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ผู้ทำสำนวนสอบสวน : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'ThitiratM',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Text(
                                              'ผ่านมาแล้ว : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              '3 วัน',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFD13F3C)
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'วันที่ขออนุมัติ : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                 color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                              ),
                                            ),
                                            Text(
                                              '9 ก.พ. 67 10:08 น.',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(
                          255, 255, 255, 255), // สี Card ที่อยู่ภายใน
                      elevation: 5 , // เพิ่มเงาให้ Card

                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                height: 50,
                                image: AssetImage('../assets/com.png')
                                ) ,
                                
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'รายการที่ปิดสำนวนการสอบสวน',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF64C623),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('../assets/avatar2.png'),
                                  radius: 16, // ขนาดของวงกลม
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผู้ทำประกัน : นายพลภัทร เรืองชัย',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ผู้ทำสำนวนสอบสวน : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'ThitiratM',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Text(
                                              'ผ่านมาแล้ว : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              '3 วัน',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFD13F3C)
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                        Row(
                                          children: [
                                            Text(
                                              'เหตุผลการปิดสำนวน : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'เสนอส่งดำเนินคดี',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 0, 224, 75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('../assets/avatar3.png'),
                                  radius: 16, // ขนาดของวงกลม
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผู้ทำประกัน : นายพลภัทร เรืองชัย',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ผู้ทำสำนวนสอบสวน : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'ThitiratM',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Text(
                                              'ผ่านมาแล้ว : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              '3 วัน',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFD13F3C)
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                        Row(
                                          children: [
                                            Text(
                                              'เหตุผลการปิดสำนวน : ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'เสนอส่งดำเนินคดี',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 0, 224, 75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

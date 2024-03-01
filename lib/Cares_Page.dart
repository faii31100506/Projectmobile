import 'package:flutter/material.dart';
import 'Request_Approval_Page.dart';

class ListcaresPage extends StatelessWidget {
  const ListcaresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), // กำหนดสีของพื้นหลังเป็นสีขาว
      body: SingleChildScrollView(
        child: Column(
          children: [
            
                Positioned(
                child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(top:0),
                    child: Image(
                        height: 150,
                        image: AssetImage('../assets/cus.png'),
                        fit: BoxFit.cover, // ให้ภาพขยายเต็มพื้นที่ของ Container
                        ), 
                      ),
                      ),
              ),
     
            Card(
              // color: Color.fromARGB(255, 255, 255 ,255),
              color: Color.fromARGB(255, 255, 255, 255), // กำหนดสีของพื้นหลังเป็นสีขาว
              elevation: 8 , // เพิ่มเงาให้ Card
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:  [
                     Text(
                      'ตารางตรวจพบ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                       Text(
                      'ความผิดปกติการฉ้อฉล',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
                      color: Color.fromARGB(255, 255, 255, 255), // สี Card ที่อยู่ภายใน
                      elevation: 5 , // เพิ่มเงาให้ Card

                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                height: 50,
                                image: AssetImage('../assets/iconwa.png')
                                ) ,
                              
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'พบความผิดปกติ 1 รายการใหม่',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'วันที่ 21 พฤษภาคม พ.ศ. 2566',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                 Image(
                                height: 50,
                                image: AssetImage('../assets/avatar.png')
                                ) ,
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
                                    Text(
                                      'ผู้ทำสำนวนสอบสวน : ThitiratM',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'สถานะรายการ : กำลังดำเนินการ',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

        
                    // Card(
                    //   color: Color.fromARGB(
                    //       255, 255, 255, 255), // สี Card ที่อยู่ภายใน
                    //   child: Padding(
                    //     padding: EdgeInsets.all(16),
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Icon(
                    //               Icons.warning,
                    //               color: Colors.orange,
                    //             ),
                    //             SizedBox(width: 8),
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'พบความผิดปกติ 2 รายการใหม่',
                    //                   style: TextStyle(
                    //                     fontSize: 14,
                    //                     fontWeight: FontWeight.bold,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'วันที่ 19 พฤษภาคม พ.ศ. 2566',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //         Divider(),
                    //         Row(
                    //           children: [
                    //             CircleAvatar(
                    //               backgroundImage:
                    //                   AssetImage('../assets/person_image3.jpg'),
                    //               radius: 16, // ขนาดของวงกลม
                    //             ),
                    //             SizedBox(width: 8),
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'ผู้ทำประกัน : นายพลภัทร เรืองชัย',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                     fontWeight: FontWeight.bold,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'ผู้ทำสำนวนสอบสวน : ThitiratM',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'สถานะรายการ : ไม่ดำเนินการ',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             CircleAvatar(
                    //               backgroundImage:
                    //                   AssetImage('../assets/person_image.jpg'),
                    //               radius: 16, // ขนาดของวงกลม
                    //             ),
                    //             SizedBox(width: 8),
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'ผู้ทำประกัน : นายสมชาย ร่มใหญ',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                     fontWeight: FontWeight.bold,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'ผู้ทำสำนวนสอบสวน : ThitiratM',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'สถานะรายการ : กำลังดำเนินการ',
                    //                   style: TextStyle(
                    //                     fontSize: 12,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
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

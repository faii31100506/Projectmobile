import 'package:flutter/material.dart';

class Frauddetail2 extends StatefulWidget {
  const Frauddetail2({Key? key}) : super(key: key);

  @override
  _FrauddetailState createState() => _FrauddetailState();
}

class _FrauddetailState extends State<Frauddetail2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 233, 233, 233),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Color.fromARGB(255, 105, 105, 105),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'FRAUD DETAIL',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              backgroundImage: AssetImage('../assets/person_image5.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                'เลขที่เคส 256702008',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                elevation: 8, //เงา
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'นางกุญชร อุบลโชติ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'เลขที่บัตรประชาชน : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '3100903556999',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'วันเกิด : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '5 พฤษภาคม 2512',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'อายุ : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '55',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'เชื้อชาติ : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'ไทย',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'สัญชาติ : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'ไทย',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'เบอร์โทรศัพท์ : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '0987654321',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'อีเมล์ : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'goonchon11@gmail.com',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'ที่อยู่ตามบัตรประชาชน : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '21 ม.9 ต.สุขใจ อ.อรุณดิ์ จ.ตาก 29011',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 155, 155, 155),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: ElevatedButton(
                                //     onPressed: () {},
                                //     style: ButtonStyle(
                                //       backgroundColor:
                                //           MaterialStateProperty.all(
                                //         const Color(0xFF666CFF),
                                //       ),
                                //       fixedSize: MaterialStateProperty.all(
                                //         const Size(120, 40),
                                //       ),
                                //       shape: MaterialStateProperty.all(
                                //         RoundedRectangleBorder(
                                //           borderRadius:
                                //               BorderRadius.circular(10),
                                //         ),
                                //       ),
                                //     ),
                                //     child: const Text('assign case'),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                color: Color.fromRGBO(255, 0, 0, 1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              '../assets/Detail2/1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              '../assets/Detail2/2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              '../assets/Detail2/3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              '../assets/Detail2/4.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Builder(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TabBar(
                        controller: _tabController,
                        labelColor: const Color(0xFF666CFF),
                        unselectedLabelColor:
                            const Color.fromARGB(255, 100, 100, 100),
                        indicatorColor: const Color(0xFF666CFF),
                        onTap: (index) {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                        tabs: const [
                          Tab(text: 'รายการผิดปกติ'),
                          Tab(text: 'ประวัติทำประกัน'),
                          Tab(text: 'ประวัติเคลมประกัน'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    if (_selectedTabIndex == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                children: [
                                  const Text(
                                    '90%',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'R001',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'เคลมประกันเกิน 10 รายการ ภายใน 30 วัน',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'ความถี่ในการเคลมประกัน',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'แนวทางการสอบสวน กรณี R001',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '• ตรวจสอบจาก DOPA ประวัติการเปลี่ยน ชื่อ',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 155, 155, 155),
                                                      ),
                                                    ),
                                                    Text(
                                                      '• สกุลขอข้อมูลเพิ่มเติมจาก ทุกบริษัทประกันภัย\n  ให้ดำเนินการส่งข้อมูล หาก\n  ผู้ต้องสงสัยมีการเคลมประกัน\n  โดยควรตรวจสอบจาก ชื่อ สกุล\n  เลขบัตรประชาชน เป็นอย่างน้อย (รวมถึง ชื่อ สกุล\n  เก่า(ถ้ามี))',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 155, 155, 155),
                                                      ),
                                                    ),
                                                    Text(
                                                      '• ขอข้อมูลทะเบียนอาชญากร จาก ตร. อ้างอิง\n  ตามเลขบัตรประชาชน',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 155, 155, 155),
                                                      ),
                                                    ),
                                                    Text(
                                                      '• ตรวจสอบการรักษากับโรงพยาบาล\n  ว่าการเบิกค่ารักษาพยาบาลในวันที่ 10 และ วันท\n  20 ทำการรักษาอย่างไร เพื่อพิจารณาว่า\n  เป็นการเคลมค่ารักษาซ้ำซ้อนโดยไม่มีการรักษาเพิ่ม\n  เติม หรือ เป็นการรักษาต่อเนื่องที่ถูกต้อง',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 155, 155, 155),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P123456789',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงเทพประกันชีวิต จำกัด',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '1 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234567891',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงไทย-แอกซ่า ประกั....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '9 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234532351',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท เคดับบลิวไอ ประกันชีวิ....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '24 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    if (_selectedTabIndex == 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P123456789',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงเทพประกันชีวิต จำ.....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '2,536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '1 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234567891',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงไทย-แอกซ่า ประกั....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '1,536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '9 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234532351',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท เคดับบลิวไอ ประกันชีวิ....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '24 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    if (_selectedTabIndex == 2)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P123456789',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงเทพประกันชีวิต จำ.....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '2,536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'มูลค่าเคลม : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '2,689,421 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '1 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'โรงพยาบาล ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'พญาไท 3',
                                                style: TextStyle(
                                                  fontSize: 14,
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234567891',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท กรุงไทย-แอกซ่า ประกั....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '1,536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'มูลค่าเคลม : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '2,689,421 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '9 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'โรงพยาบาล ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'กรุงเทพ',
                                                style: TextStyle(
                                                  fontSize: 14,
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
                              const SizedBox(height: 15),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'เลขที่กรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'P234532351',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'บริษัทประกันภัย : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'บริษัท เคดับบลิวไอ ประกันชีวิ....',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อกรมธรรม์ : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Easy E-Health',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'ทุนประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '536,984 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'มูลค่าเคลม : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '2,689,421 บาท',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'วันที่เคลมประกัน : ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '24 มิ.ย. 66',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'โรงพยาบาล ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'รามาฯ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

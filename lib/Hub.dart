import 'package:flutter/material.dart';
import 'package:my_flutter_project/login_page.dart';
import 'Cares_Page.dart';
import 'Request_Approval_Page.dart';
import 'Dashboards_Page.dart';
import 'Other_Page.dart';

class Hub extends StatefulWidget {
  const Hub({super.key});

  @override
  State<Hub> createState() => _HubState();
}

class _HubState extends State<Hub> {
  int currentTab = 0;
  final List<Widget> screens = [
    ListcaresPage(),
    RequestApproval(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF009788), // กำหนดสีของพื้นหลังเป็นสีขาว

        automaticallyImplyLeading: false,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/shop.png',
                    height: 30,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Flutter Scale',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            // alignment: Alignment.topRight,

            // child:
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Icon(Icons.logout_rounded, color: Colors.black),
            ),
            // ),
            // const Spacer(),
          ],
        ),
        // backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen = Dashboards();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Color(0xFF73C088) : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0
                              ? Color(0xFF73C088)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Other();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.auto_graph_rounded,
                      color: currentTab == 1 ? Color(0xFF73C088) : Colors.grey,
                    ),
                    Text(
                      'Report',
                      style: TextStyle(
                          color: currentTab == 1
                              ? Color(0xFF73C088)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Other();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: currentTab == 2 ? Color(0xFF73C088) : Colors.grey,
                    ),
                    Text(
                      'Notification',
                      style: TextStyle(
                          color: currentTab == 2
                              ? Color(0xFF73C088)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Other();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      color: currentTab == 3 ? Color(0xFF73C088) : Colors.grey,
                    ),
                    Text(
                      'Sitting',
                      style: TextStyle(
                          color: currentTab == 3
                              ? Color(0xFF73C088)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Other();
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline_sharp,
                      color: currentTab == 4 ? Color(0xFF73C088) : Colors.grey,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: currentTab == 4
                              ? Color(0xFF73C088)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

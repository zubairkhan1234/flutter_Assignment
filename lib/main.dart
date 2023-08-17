// import 'package:flutter/material.dart';
// import 'package:flutterassignment/myapp/myapp.dart';

// void main() => runApp(MyApp());

// // class BottomNavigationExample extends StatefulWidget {
// //   const BottomNavigationExample({Key? key}) : super(key: key);
// //
// //   @override
// //   _BottomNavigationExampleState createState() =>
// //       _BottomNavigationExampleState();
// // }
// //
// // class _BottomNavigationExampleState extends State {
// //   int _selectedTab = 0;
// //
// //   List _pages = [
// //     Center(
// //       child: Text("Home"),
// //     ),
// //     Center(
// //       child: Text("About"),
// //     ),
// //     Center(
// //       child: Text("Products"),
// //     ),
// //     Center(
// //       child: Text("Contact"),
// //     ),
// //     Center(
// //       child: Text("Settings"),
// //     ),
// //   ];
// //
// //   _changeTab(int index) {
// //     setState(() {
// //       _selectedTab = index;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: _pages[_selectedTab],
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _selectedTab,
// //         onTap: (index) => _changeTab(index),
// //         selectedItemColor: Colors.red,
// //         unselectedItemColor: Colors.grey,
// //         items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.contact_mail), label: "Contact"),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.settings), label: "Settings"),
// //         ],
// //       ),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<dynamic> listOfDetails = [
    {
      'name': 'Zeeshan',
      'imgPath': 'pic1.jpg',
      'message': 'Hey, what\'s going on?',
      'time': '10:50 am'
    },
    {
      'name': 'Yasir',
      'imgPath': 'pic2.jpg',
      'message': 'Hey there.',
      'time': '11:50 am'
    },
    {
      'name': 'Awais',
      'imgPath': 'pic3.jpg',
      'message': 'Hey, what\'s going on?',
      'time': '10:50 am'
    },
    {
      'name': 'Usman',
      'imgPath': 'pic4.jpg',
      'message': 'Let\'s hang out',
      'time': '10:50 am'
    },
    {
      'name': 'Saqib',
      'imgPath': 'pic5.jpeg',
      'message': 'Call me when you are free',
      'time': '07:50 am'
    },
    {
      'name': 'Hasan',
      'imgPath': 'pic6.jpeg',
      'message': 'Been calling you',
      'time': '04:50 am'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff128c7e),
            title: const Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 21),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  constraints: const BoxConstraints(maxWidth: 30),
                  icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {},
                  constraints: const BoxConstraints(maxWidth: 40),
                  icon: const Icon(Icons.more_vert))
            ],
            bottom:
                TabBar(isScrollable: true, indicatorColor: Colors.white, tabs: [
              SizedBox(
                width: screenWidth * .02,
                child: const Tab(
                    child: Icon(
                  Icons.camera_alt,
                  size: 18,
                )),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: const Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: const Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: const Tab(
                  child: Text(
                    'CALLS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(),
            chatsTab(),
            Container(),
            Container(),
          ]),
        ),
      ),
    );
  }

  Widget chatsTab() {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
            itemCount: listOfDetails.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    index !=
                            0 //it will show the archived block with first item only
                        ? const SizedBox()
                        : Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, top: 10, left: 10),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.archive_outlined,
                                  size: 25,
                                  color: Color(0xff128c7e),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text('Archived',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 14.5,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/${listOfDetails[index]['imgPath']}',
                                    height: 52,
                                    width: 52,
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(listOfDetails[index]['name'],
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(listOfDetails[index]['message'],
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                          Text(listOfDetails[index]['time'],
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11))
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}

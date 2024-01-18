import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/core/colors.dart';
import 'package:task1/screens/dashboard_page.dart';

import 'customer_page.dart';
import 'katha_page.dart';
import 'order_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;

  final List<Widget> pages = [
    Dashboard(),
    CustomerPage(),
    KathaPage(),
    OrderPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        // focusColor: Colors.red,
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          
          Icons.add,
          size: 20,
          color: Colors.white,
          
        ),
        // child: CircleAvatar(
        //   radius: 50,
        //   backgroundColor: Colors.red,
        //   //child: Icon(Icons.add),
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //shadowColor: Colors.red,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        _currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.home,
                        //   color: _currentTab == 0 ? appColor : greyColor,
                        // ),
                        SvgPicture.asset('assets/icons/Group 910.svg', width: 30,),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                              color:
                                  _currentTab == 0 ? appColor : greyColor,),
                        ),
                      ],
                    ),
                  ),

                  //------Customer -------- //

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = CustomerPage();
                        _currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.person,
                        //   color: _currentTab == 1 ? appColor : greyColor,
                        // ),
                         SvgPicture.asset('assets/icons/Group 912.svg', width: 30,),
                        Text(
                          'Customer',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                              color:
                                  _currentTab == 1 ? appColor : greyColor),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 70,),

                  //---------Katha -------//

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = KathaPage();
                        _currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.book,
                        //   color: _currentTab == 2 ? appColor : greyColor,
                        // ),
                         SvgPicture.asset('assets/icons/Group 913.svg', width: 30,),
                        Text(
                          'Katha',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                              color:
                                  _currentTab == 2 ? appColor : greyColor,),
                        ),
                      ],
                    ),
                  ),

                  //--------Order------//

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = OrderPage();
                        _currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.bookmark_add,
                        //   color: _currentTab == 3 ? appColor : greyColor,
                        // ),
                         SvgPicture.asset('assets/icons/Group 914.svg', width: 30,),
                        Text(
                          
                          'Order',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                              color:
                                  _currentTab == 3 ? appColor : greyColor,),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
//       bottomNavigationBar: BottomNavigationBar(
        
//   backgroundColor: Colors.transparent, // Set the background color of the BottomNavigationBar
//   currentIndex: _currentTab,
//   onTap: (index) {
//     setState(() {
//       _currentTab = index;
//       switch (index) {
//         case 0:
//           currentScreen = Dashboard();
//           break;
//         case 1:
//           currentScreen = CustomerPage();
//           break;
//         case 2:
//           currentScreen = KathaPage();
//           break;
//         case 3:
//           currentScreen = OrderPage();
//           break;
//       }
//     });
//   },
//   items: [
//     BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Home',
//       backgroundColor: Colors.blue,
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.person),
//       label: 'Customer',
//       backgroundColor: Colors.blue,
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.book),
//       label: 'Katha',
//       backgroundColor: Colors.blue,
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.bookmark_add),
//       label: 'Order',
//       backgroundColor: Colors.blue,
//     ),
//   ],
// ),
    );
  }
}

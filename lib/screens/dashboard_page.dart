// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task1/core/colors.dart';
import 'package:task1/screens/katha_page.dart';
import 'package:task1/screens/order_page.dart';
import 'package:task1/widgets/carousel_slider.dart';

import 'customer_page.dart';
//import 'package:intl/intl.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final _dateTime = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    // Format the month name
    String formattedMonth = DateFormat.MMM().format(_dateTime);
    String formattedTime = DateFormat('hh:mm a').format(_dateTime);

    int montn = _dateTime.month;
    int day = _dateTime.day;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SvgPicture.asset(
            'assets/icons/Group 921.svg',
            fit: BoxFit.contain,
            width: 70,
            height: 50,
          ),
          actions: [
            SvgPicture.asset(
              'assets/icons/Group 921.svg',
              fit: BoxFit.contain,
              width: 70,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              'assets/icons/Trailing icon 1.svg',
              fit: BoxFit.contain,
              width: 70,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              'assets/icons/Group 921.svg',
              fit: BoxFit.contain,
              width: 70,
              height: 50,
            ),
          ],
        ),
        body: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          height: double.infinity,
          width: double.infinity,
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Welcome, ',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600),
                    ),
                    const Text(
                      'Mypcot !!, ',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'here is your dashboard ...',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade700),
                    ),
                    SvgPicture.asset(
                      'assets/icons/Group 922.svg',
                      fit: BoxFit.contain,
                      width: 70,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),

                CarouselSliders(),

                const SizedBox(
                  height: 50,
                ),

                //! calander

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat.yMMMMd().format(_dateTime),
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.33,
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'TIMELINE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            const Icon(
                              Icons.date_range,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('$formattedMonth  $day'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  child: DatePicker(
                    DateTime.now(),
                    height: 100,
                    width: 80,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: appColor,
                    selectedTextColor: Colors.white,
                    dateTextStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border(),
                          boxShadow:const  [
                            // BoxShadow(
                            //   color: Colors.grey,
                            //   blurRadius: 0.0,
                            //   spreadRadius: 2.0,
                            //   offset: Offset(4.0, 4.0),
                            // ),
                          ],
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      width: double.infinity,
                      child: Container(
                        //color: Colors.yellow,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const  Text(
                              'New Order Created',
                              style: TextStyle(color: appColor, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'New Order Created With Order',
                                  style: TextStyle(color: greyColor, fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.orange,
                                  child: SvgPicture.asset('assets/icons/Group 900.svg', width: 30,),
                                ),
                              ],
                            ),
                            Text('$formattedTime', style: const TextStyle(color: Colors.orange, fontSize: 14, fontWeight: FontWeight.w400),),
                            const Icon(Icons.arrow_right_alt)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

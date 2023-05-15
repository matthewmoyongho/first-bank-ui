import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_drawer.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/services_grid.dart';
import '../widgets/statistics.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      color: const Color(0XFF1B2A47),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0XFF1B2A47),
            title: const Text('Dashboard'),
            centerTitle: true,
            elevation: 0.0,
            actions: const [
              Icon(Icons.notifications_outlined),
            ],
          ),
          drawer: const AppDrawer(),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  color: const Color(0XFF1B2A47),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0XFF0A162C),
                            child: Icon(
                              Icons.camera_alt,
                              size: 40,
                              color: Color(0XFFBFC2C9),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Good Morning, Mathew Moyongho',
                                    style: GoogleFonts.robotoSlab(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Login 01/04/23',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  'HISTORY',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: deviceSize.width * .8,
                        decoration: BoxDecoration(
                          color: const Color(0XFF8C94A7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ACCOUNT #3182841955',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.white38),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('₦10.047',
                                style: GoogleFonts.merriweather(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: const Color(0XFFFFFFFF),
                  child: SingleChildScrollView(
                    child: Column(children: const [
                      ServicesGrid(),
                      Statistics(),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: currentIndex,
          ),
        ),
      ),
    );
  }
}

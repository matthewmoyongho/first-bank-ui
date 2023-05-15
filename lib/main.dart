// import 'package:flutter/material.dart';
//
// import './app.dart';
//
// void main() {
//   runApp(const App());
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

// App
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

//Home Screen
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

//App Drawer
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//Bottom Nav Bar
class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.account_circle,
          ),
          label: 'Beneficiaries',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.favorite_border,
          ),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      backgroundColor: const Color(0XFF1B2A47),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedLabelStyle: const TextStyle(color: Colors.white),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedIconTheme: const IconThemeData(color: Color(0XFFFFB60A)),
      unselectedIconTheme: const IconThemeData(color: Color(0XFF8C94A7)),
      elevation: 0,
      iconSize: 20,
      onTap: (val) {
        setState(() {
          widget.currentIndex = val;
        });
      },
    );
  }
}

//Dash Widget
class DashWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DashWidget({
    this.totalWidth = 280,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.dashColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}

//Services Grid
class ServicesGrid extends StatelessWidget {
  const ServicesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      height: MediaQuery.of(context).size.height * .25,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          // crossAxisSpacing: 10,
          childAspectRatio: 1 / .75,
        ),
        children: [
          ServiceButton(title: 'Transfer', imgUrl: 'assets/transfer.png'),
          ServiceButton(title: 'Pay Bills', imgUrl: 'assets/pay_bills.png'),
          ServiceButton(title: 'Buy Airtime', imgUrl: 'assets/buy_airtime.png'),
          ServiceButton(title: 'QR Payment', imgUrl: 'assets/QR_Payments.png'),
          ServiceButton(title: 'Loans', imgUrl: 'assets/loans.png'),
          ServiceButton(
              title: 'Virtual Cards', imgUrl: 'assets/virtual_card.png'),
        ],
      ),
    );
  }
}

class ServiceButton extends StatelessWidget {
  ServiceButton({Key? key, required this.title, required this.imgUrl})
      : super(key: key);

  String title;
  String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(30),
          color: const Color(0XFFFEFEFE),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: FittedBox(
                child: Image(
                  image: AssetImage(imgUrl),
                  height: 25,
                  width: 25,
                ),
              ),
            ),
          ),
        ),
        // Icon(Icons.transfer_within_a_station),
        const SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }
}

//Statistics
class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('MY STATISTICS'),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Text(
                'Inflow',
                style: TextStyle(fontSize: 10, color: Colors.black45),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0XFFFFB60A),
                    borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Outflow',
                style: TextStyle(fontSize: 10, color: Colors.black45),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0XFF1B2A47),
                    borderRadius: BorderRadius.circular(5)),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.calendar_month,
                color: Colors.black45,
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                'MAR - APR 2023',
                style: TextStyle(color: Colors.black45, fontSize: 10),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 55,
                      ),
                      Text('MAR WEEK 5',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10)),
                    ],
                  ),
                  ChartLevel(
                    amount: '25k ₦',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChartLevel(
                    amount: '20k ₦',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChartLevel(
                    amount: '15k ₦',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChartLevel(
                    amount: '10k ₦',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChartLevel(
                    amount: '5000 ₦',
                  ),
                ],
              ),
              Bar(
                color: const Color(0XFF1B2A47),
                height: 210,
                left: 55,
              ),
              Bar(
                color: const Color(0XFFFFB60A),
                height: 120,
                left: 65,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  Bar({
    super.key,
    required this.color,
    required this.height,
    required this.left,
  });
  double height;
  double left;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: left,
      height: height,
      width: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          color: color,
        ),
      ),
    );
  }
}

class ChartLevel extends StatelessWidget {
  ChartLevel({super.key, required this.amount});
  String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          alignment: Alignment.centerRight,
          child: Text(amount,
              style: const TextStyle(color: Colors.black45, fontSize: 10)),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
            child: DashWidget(
          dashColor: Colors.black45,
          dashHeight: 1,
        )
            // Divider(
            //   color: Colors.black45,
            // ),
            ),
      ],
    );
  }
}

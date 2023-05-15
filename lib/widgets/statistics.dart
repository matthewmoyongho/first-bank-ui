import 'package:first_bank_ui/widgets/dash_widget.dart';
import 'package:flutter/material.dart';

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

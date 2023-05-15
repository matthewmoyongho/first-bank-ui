import 'package:flutter/material.dart';

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

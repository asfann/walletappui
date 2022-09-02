import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.balance, required this.cardNumber, required this.expiredMonth, required this.expiredYear, this.color}) : super(key: key);
  final double balance;
  final int cardNumber;
  final int expiredMonth;
  final int expiredYear;
  final color;



  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: color,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Balance",
                  style: TextStyle(color: Colors.white)),
                Image.asset('lib/Icons/visa-logo.png', height: 50,),
              ],
            ),
            Text("\$" + balance.toString(),
              style:const TextStyle(color: Colors.white,
                  fontSize: 36,
              fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(cardNumber.toString(),
                  style: const TextStyle(color: Colors.white),),
                Text(expiredMonth.toString() + "/" + expiredYear.toString(),
                  style: const TextStyle(color: Colors.white),)
              ],
            )
          ],
        ),),
    );
  }
}

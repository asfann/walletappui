import 'package:flutter/material.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_column.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,
        size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed:(){} ,icon:  Icon(Icons.home,
              size: 32,
                color: Colors.pink[200],),
              ),
              IconButton(onPressed:(){} ,icon:  Icon(Icons.settings,
                size: 32,
                color: Colors.pink[200],)),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                Row(children: const [
                  Text("My ",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                    ),),
                  Text(" Cards",
                    style: TextStyle(
                      fontSize: 28,
                    ),),
                ],),
                  //plus button
                 Container(padding: const EdgeInsets.all(4),
                     decoration: BoxDecoration(
                   color: Colors.grey[400],
                   shape: BoxShape.circle
                 ),
                     child:const Icon(Icons.add))
                ],
              ),
            ),

            const SizedBox(height: 25),
            //cards
           Container(
             height: 200,
             child: PageView(
               scrollDirection: Axis.horizontal,
               controller: _controller,
               children: const [
                 MyCard(
                   balance: 5250.20,
                   cardNumber: 1234567,
                   expiredMonth: 10,
                 expiredYear: 24,
                 color: Colors.blue,),
                 MyCard(balance: 450.20,
                     cardNumber: 613451,
                     expiredMonth: 10,
                     expiredYear: 24,
                     color: Colors.orangeAccent),
                 MyCard(balance: 6050.20,
                     cardNumber: 61361345,
                     expiredMonth: 10,
                     expiredYear: 24,
                     color: Colors.purple),
               ],
             ),
           ),
            const SizedBox(height: 25),
            SmoothPageIndicator(controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800
              ),
            ),

            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  //send
                 MyButton(iconImagePath: "lib/Icons/send-money.png", buttonText: "Send"),
                  //pay
                  MyButton(iconImagePath: "lib/Icons/bill.png", buttonText: "Bill"),
                  //bill
                  MyButton(iconImagePath: "lib/Icons/credit-card.png", buttonText: "Credit card"),

                ],
              ),
            ),
            // 3 buttons -> send, pay, bill
            Column(
              children: const [
                MyColumn(iconImagePath: "lib/Icons/analysis.png", text1: "Statistics", text2: "Payment and Income"),
                MyColumn(iconImagePath: "lib/Icons/money-transfer.png", text1: "Transactions", text2: "Transaction History"),
              ],
            )

            // column -> stats, transactions

          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key, required this.iconImagePath, required this.text1, required this.text2}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final iconImagePath;
  final String text1;
  final String text2;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15)
                ),
                padding: const EdgeInsets.all(12),
                height: 80,
                child: Image.asset(iconImagePath),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(text1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  const SizedBox(height: 7,),
                  Text(text2, style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800]
                  ),),
                ],
              ),
              const SizedBox(width: 20),
              const Icon(Icons.arrow_forward_ios),
            ],
          )
        ],
      ),
    );
  }
}

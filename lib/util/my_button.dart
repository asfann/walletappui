import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.iconImagePath, required this.buttonText}) : super(key: key);
  final iconImagePath;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(height: 15,),
        Text(buttonText,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),)
      ],
    );
  }
}

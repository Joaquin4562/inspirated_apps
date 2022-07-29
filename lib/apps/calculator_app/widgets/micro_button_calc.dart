import 'package:flutter/material.dart';

class MicroButtonCalc extends StatelessWidget {
  const MicroButtonCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.grey.shade500,
            offset: const Offset(4, 4),
          ),
          const BoxShadow(
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.white,
            offset: Offset(-4, -4),
          )
        ],
      ),
      child: const Icon(
        Icons.mic,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

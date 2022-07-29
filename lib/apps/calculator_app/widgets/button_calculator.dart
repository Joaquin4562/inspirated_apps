import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey.shade300;
    Color shadow = Colors.white;
    if (text == 'C' || text == '+/-' || text == '%') {
      color = Colors.grey.shade400;
      shadow = Colors.grey.shade300;
    }
    if (text == '/' ||
        text == 'x' ||
        text == '-' ||
        text == '+' ||
        text == '=') {
      color = Colors.orange.shade500;
      shadow = Colors.orange.shade300;
    }
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(2, 2),
          ),
          const BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(-2, -2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color,
            color,
            color,
            shadow,
          ],
          stops: const [
            0.1,
            0.2,
            0.5,
            0.9,
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 30,
          )
        ),
      ),
    );
  }
}

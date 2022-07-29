import 'package:flutter/material.dart';

class SearchInputCinema extends StatelessWidget {
  const SearchInputCinema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff0A0B0F).withOpacity(0.2),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

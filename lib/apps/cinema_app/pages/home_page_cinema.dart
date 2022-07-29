import 'package:flutter/material.dart';
import 'package:portfolio_apps/apps/cinema_app/wdgets/category_secction_cinema.dart';
import 'package:portfolio_apps/apps/cinema_app/wdgets/search_input_cinema.dart';

class HomePageCinema extends StatelessWidget {
  const HomePageCinema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0B0F),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchInputCinema(),
            CategorySecctionCinema(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}

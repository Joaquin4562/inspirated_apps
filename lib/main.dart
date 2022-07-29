import 'package:flutter/material.dart';
import 'package:portfolio_apps/apps/calculator_app/pages/home_page_calculator.dart';
import 'package:portfolio_apps/apps/cinema_app/pages/home_page_cinema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'cinema': (_) => const HomePageCinema(),
        'calculator': (_) => const HomePageCalculator()
      },
      home: const ListPages(),
    );
  }
}

class ListPages extends StatelessWidget {
  const ListPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplicaciones inspiradas en diseños',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Cinema App'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageCinema(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Calculator App'),
              onTap: () {
                Navigator.pushNamed(context, 'calculator');
              },
            )
          ],
        ),
      ),
    );
  }
}

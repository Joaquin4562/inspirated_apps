import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_apps/apps/calculator_app/widgets/boucing_animation_widget_calc.dart';
import 'package:portfolio_apps/apps/calculator_app/widgets/button_calculator.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_apps/apps/calculator_app/widgets/micro_button_calc.dart';

class HomePageCalculator extends StatefulWidget {
  const HomePageCalculator({Key? key}) : super(key: key);

  @override
  State<HomePageCalculator> createState() => _HomePageCalculatorState();
}

class _HomePageCalculatorState extends State<HomePageCalculator> {
  List<String> textList = ['0'];
  @override
  Widget build(BuildContext context) {
    final listCalc = [
      'C',
      '+/-',
      '%',
      '/',
      '7',
      '8',
      '9',
      'x',
      '4',
      '5',
      '6',
      '-',
      '1',
      '2',
      '3',
      '+',
      '0',
      '.',
      '='
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:
              RadialGradient(radius: 1, center: Alignment.bottomRight, colors: [
            Colors.orange.shade200,
            Colors.grey.shade300,
          ], stops: const [
            0.2,
            0.9
          ]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: BoucingAnimationWidgetCalc(
                      onTap: () {
                        print('microphone');
                      },
                      child: const MicroButtonCalc(),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        NumberFormat('###,###', 'en_US').format(
                          int.parse(textList.join()),
                        ),
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.montserrat(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 5,
                    right: 5,
                  ),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 16,
                    children: listCalc
                        .map(
                          (e) => StaggeredGridTile.count(
                            mainAxisCellCount: 1,
                            crossAxisCellCount: e == '0' ? 2 : 1,
                            child: BoucingAnimationWidgetCalc(
                              onTap: () {
                                setState(() {
                                  if (textList[0] == '0') {
                                    textList.clear();
                                    textList.add(e);
                                  } else if (e == 'C') {
                                    textList.clear();
                                    textList.add('0');
                                  } else if (RegExp(r'^[0-9]+$').hasMatch(e)) {
                                    textList.add(e);
                                  }
                                });
                              },
                              child: ButtonCalculator(
                                text: e,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

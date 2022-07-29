import 'package:flutter/material.dart';

class BoucingAnimationWidgetCalc extends StatefulWidget {
  const BoucingAnimationWidgetCalc({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final VoidCallback? onTap;
  @override
  State<BoucingAnimationWidgetCalc> createState() =>
      _BoucingAnimationWidgetCalcState();
}

class _BoucingAnimationWidgetCalcState extends State<BoucingAnimationWidgetCalc>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animationController.value;
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _tapUp(TapUpDetails details) {
    _animationController.reverse();
  }
}

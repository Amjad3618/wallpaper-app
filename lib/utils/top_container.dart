import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;
  final Color borderColor;
  final double height;
  final double borderWidth;
  final double borderRadius;

  const TopContainer({
    Key? key,
    required this.children,
    this.backgroundColor = Colors.grey,
    this.borderColor = Colors.orange,
    this.height = 50,
    this.borderWidth = 3,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(width: borderWidth, color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

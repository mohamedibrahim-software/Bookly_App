import 'package:flutter/material.dart';

class PageIndecator extends StatelessWidget {
  const PageIndecator({super.key, required this.isactive});
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: isactive ? 33 : 22,
        height: 18,
        decoration: BoxDecoration(
          color: isactive ? Colors.purple : Colors.grey,
          borderRadius: BorderRadius.circular(33),
        ),
      ),
    );
  }
}

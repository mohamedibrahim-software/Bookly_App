import 'package:bookly_app/core/utils/Style.dart';
import 'package:flutter/material.dart';

class Custeme_bottom extends StatelessWidget {
  const Custeme_bottom({
    super.key,
    required this.borderRadiusGeometry,
    required this.color,
    required this.text,
    required this.ontap,
    required this.minimumSize,
  });
  final BorderRadiusGeometry borderRadiusGeometry;
  final Color color;
  final Text text;
  final Size minimumSize;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: Styles.textStyle20,
        minimumSize: minimumSize,
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: borderRadiusGeometry),
      ),
      onPressed: ontap,
      child: text,
    );
  }
}

import 'package:bookly_app/core/utils/Style.dart';
import 'package:flutter/material.dart';

class CustemTextbootom extends StatelessWidget {
  const CustemTextbootom({super.key, required this.text, required this.ontap});
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Text(text, style: Styles.textStyle20),
    );
  }
}

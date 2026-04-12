import 'package:bookly_app/core/utils/Style.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 66),
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: Image.asset(image),
            ),
          ],
        ),
        Text(title, style: Styles.textStyle30, textAlign: TextAlign.center),
      ],
    );
  }
}

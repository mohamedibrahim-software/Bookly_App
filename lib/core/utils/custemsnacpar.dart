import 'package:flutter/material.dart';

void custemsnacpar(context, String text, IconData icon) {
  ScaffoldMessenger.of(context).clearSnackBars();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.red.shade900,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.red, size: 22),
            SizedBox(width: 12),
            Text(text, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      duration: Duration(seconds: 1),
      dismissDirection: DismissDirection.down,
    ),
  );
}

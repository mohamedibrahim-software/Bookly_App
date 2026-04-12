import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CusremBookdetails_appar extends StatelessWidget {
  const CusremBookdetails_appar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => GoRouter.of(context).pop(context),
        icon: Icon(Icons.close),
      ),
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}

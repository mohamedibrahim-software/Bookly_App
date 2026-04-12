import 'package:bookly_app/features/cart/presentation/view/widget/apparcart.dart';
import 'package:bookly_app/features/cart/presentation/view/widget/cartbody.dart';
import 'package:flutter/material.dart';

class Cartview extends StatelessWidget {
  const Cartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [apparcart()]),
      body: Cartbody(),
    );
  }
}

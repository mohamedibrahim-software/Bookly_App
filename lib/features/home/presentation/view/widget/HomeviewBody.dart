import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Listview_item.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Item_Bestsaller_listview.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Listview_item(),
        SizedBox(height: 19),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Best Sellar', style: Styles.textStyle20),
        ),
        Item_Bestsaller_listview(),
      ],
    );
  }
}

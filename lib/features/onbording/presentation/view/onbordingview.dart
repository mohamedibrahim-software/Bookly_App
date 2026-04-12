import 'package:bookly_app/core/utils/AppColor.dart';
import 'package:bookly_app/core/utils/Approuter.dart';
import 'package:bookly_app/features/onbording/presentation/view/widget/content.dart';
import 'package:bookly_app/features/onbording/presentation/view/widget/page_indecator.dart';
import 'package:bookly_app/features/onbording/presentation/view/widget/textbottom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onbordingview extends StatefulWidget {
  const Onbordingview({super.key});

  @override
  State<Onbordingview> createState() => _OnbordingviewState();
}

class _OnbordingviewState extends State<Onbordingview> {
  final List<Widget> cotent = [
    Content(title: 'welcome to bookly', image: 'assets/images/test_image.png'),
    Content(
      title: 'here you can read any book you want',
      image: 'assets/images/test_image.png',
    ),
  ];
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
            itemCount: cotent.length,
            itemBuilder: (context, index) {
              return cotent[index];
            },
          ),
          currentIndex < 1
              ? Positioned(
                  bottom: 23,
                  left: 33,
                  child: CustemTextbootom(
                    text: 'Next',
                    ontap: () {
                      pageController.nextPage(
                        duration: Duration(microseconds: 222),
                        curve: Curves.bounceIn,
                      );
                    },
                  ),
                )
              : Positioned(
                  bottom: 23,
                  right: 33,
                  child: CustemTextbootom(
                    text: 'Go to read',
                    ontap: () {
                      GoRouter.of(context).push(Approuter.bottomnav);
                    },
                  ),
                ),
          Positioned(
            bottom: 33,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(cotent.length, (index) {
                  return PageIndecator(isactive: index == currentIndex);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

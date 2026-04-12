import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Custeme_bottom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Achion_bottom_Bookdetailsview extends StatelessWidget {
  const Achion_bottom_Bookdetailsview({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Custeme_bottom(
          minimumSize: Size(170, 58),
          ontap: () {},
          text: Text('99.9', style: TextStyle(color: Colors.black)),
          color: Colors.white,
          borderRadiusGeometry: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(17),
            topLeft: Radius.circular(17),
          ),
        ),
        Custeme_bottom(
          minimumSize: Size(170, 58),
          ontap: () async {
            await launchurl(book.volumeInfo?.previewLink ?? '');
          },
          text: Text('Free preview', style: TextStyle(color: Colors.white)),
          color: Colors.deepOrangeAccent,
          borderRadiusGeometry: BorderRadiusGeometry.only(
            bottomRight: Radius.circular(17),
            topRight: Radius.circular(17),
          ),
        ),
      ],
    );
  }

  Future<void> launchurl(String url) async {
    Uri url0 = Uri.parse(url);

    if (await canLaunchUrl(url0)) {
      await launchUrl(url0, mode: LaunchMode.inAppWebView);
    } else {
      ScaffoldMessenger(child: Center(child: Text('noooooobbb')));
    }
  }
}

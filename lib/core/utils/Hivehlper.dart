import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/volume_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class Hivehlper {
  static String bookbox = "bookbox";
  static String favbox = "favbox";
  static String cartbox = "cartbox";
  static Future<void> intialize() async {
    await Hive.initFlutter();

    Hive.registerAdapter(BookmodelAdapter());
    Hive.registerAdapter(VolumeInfoAdapter());
    Hive.registerAdapter(ImageLinksAdapter());
    await Hive.openBox<Bookmodel>(bookbox);
    await Hive.openBox<Bookmodel>(favbox);
    await Hive.openBox<Bookmodel>(cartbox);
  }
}

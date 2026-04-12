import 'package:bookly_app/Hivehlper.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:hive/hive.dart';

class Cachefav {
  Future<void> cachdfav(Bookmodel book) async {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.favbox);
    await cachbox.put(book.volumeInfo?.title, book);
  }

  List<Bookmodel> getdfav() {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.favbox);
    return cachbox.values.toList();
  }

  Future<void> deletefav(Bookmodel book) {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.favbox);
    return cachbox.delete(book.volumeInfo?.title);
  }

  bool isfav(Bookmodel book) {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.favbox);
    return cachbox.containsKey(book.volumeInfo?.title);
  }
}

import 'package:bookly_app/Hivehlper.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:hive/hive.dart';

class Cachecart {
  Future<void> addtocart(Bookmodel book) async {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    book.quantity = 1;
    await box.put(book.volumeInfo?.title, book);
  }

  List<Bookmodel> getcart() {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    return box.values.toList();
  }

  Future<void> deletcart(Bookmodel book) async {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    await box.delete(book.volumeInfo?.title);
  }

  Future<void> deletallcart() async {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    await box.clear();
  }

  Future<void> increment(Bookmodel book) async {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    book.quantity = (book.quantity ?? 1) + 1;
    await box.put(book.volumeInfo?.title, book);
  }

  Future<void> decrement(Bookmodel book) async {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    if ((book.quantity ?? 1) > 1) {
      book.quantity = book.quantity! - 1;
      await box.put(book.volumeInfo?.title, book);
    }
  }

  bool isincart(Bookmodel book) {
    final box = Hive.box<Bookmodel>(Hivehlper.cartbox);
    return box.containsKey(book.volumeInfo?.title);
  }
}

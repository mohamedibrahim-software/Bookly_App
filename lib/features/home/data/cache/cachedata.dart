import 'package:bookly_app/Hivehlper.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:hive/hive.dart';

class Cachedatahive {
  Future<void> cachdata(List<Bookmodel> book) async {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.bookbox);
    await cachbox.addAll(book);
  }

  List<Bookmodel> getdata() {
    final cachbox = Hive.box<Bookmodel>(Hivehlper.bookbox);
    return cachbox.values.toList();
  }
}

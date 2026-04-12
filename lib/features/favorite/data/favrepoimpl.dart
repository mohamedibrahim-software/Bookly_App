import 'package:bookly_app/features/favorite/data/cache_fav/cachfav.dart';
import 'package:bookly_app/features/favorite/data/favrepo.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';

class Favrepoimpl implements Favrepo {
  final Cachefav _cachefav = Cachefav();

  @override
  Future<void> AddFav({required Bookmodel book}) async {
    await _cachefav.cachdfav(book);
  }

  @override
  Future<void> RemoveFav({required Bookmodel book}) async {
    await _cachefav.deletefav(book);
  }

  @override
  List<Bookmodel> getvav() {
    return _cachefav.getdfav();
  }

  @override
  bool isfav({required Bookmodel book}) {
    return _cachefav.isfav(book);
  }
}

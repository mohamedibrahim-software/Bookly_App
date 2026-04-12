import 'package:bookly_app/features/home/data/cache/cachedata.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repo/Homerepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_state.dart';

class fatchFeatureCubit extends Cubit<FeatureState> {
  fatchFeatureCubit(this.homrepo) : super(FeatureInitial());
  final HomeRepo homrepo;
  final _cache = Cachedatahive();

  Future<void> featchfeaturebook() async {
    emit(Featureloading());
    var result = await homrepo.fetchFeaturedBooks();

    result.fold(
      (failer) {
        final cache = _cache.getdata();
        if (cache.isNotEmpty) {
          emit(Featuresucsess(cache, isfromcache: true));
        } else {
          emit(Featurefailer(failer.errore));
        }
      },
      (book) {
        _cache.cachdata(book);
        emit(Featuresucsess(book, isfromcache: false));
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/search/data/repo/searchrepo.dart';
import 'package:equatable/equatable.dart';

part 'searchbook_state.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit(this.searchrepo) : super(SearchbookInitial());
  final Searchrepo searchrepo;
  Future<void> fetchsearchbooks({required String search}) async {
    emit(SearchbookLoading());
    var result = await searchrepo.fetchsearchbooks(search: search);
    result.fold(
      (l) => emit(SearchbookFailure(l.errore)),
      (r) => emit(SearchbookSuccess(r)),
    );
  }
}

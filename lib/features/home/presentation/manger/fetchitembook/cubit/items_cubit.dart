import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repo/Homerepo.dart';
import 'package:equatable/equatable.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit(this.repo) : super(ItemsInitial());
  final HomeRepo repo;
  Future<void> fetchitems({required String category}) async {
    emit(itemsloading());
    var result = await repo.fetchitems(category: category);
    result.fold(
      (l) => emit(itemsfailer(l.errore)),
      (r) => emit(itemssucsess(r)),
    );
  }
}

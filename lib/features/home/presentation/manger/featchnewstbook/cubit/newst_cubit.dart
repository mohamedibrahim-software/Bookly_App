import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repo/Homerepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newst_state.dart';

class fatchNewstCubit extends Cubit<NewstState> {
  fatchNewstCubit(this.homeRepo) : super(NewstInitial());
  final HomeRepo homeRepo;
  Future<void> featchnewstbook() async {
    emit(Newstloading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failer) => emit(Newstfailer(failer.errore)),
      (book) => emit(Newstsucsess(book)),
    );
  }
}

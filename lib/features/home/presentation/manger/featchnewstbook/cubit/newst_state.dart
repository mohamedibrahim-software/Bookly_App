part of 'newst_cubit.dart';

sealed class NewstState extends Equatable {
  const NewstState();

  @override
  List<Object> get props => [];
}

final class NewstInitial extends NewstState {}

final class Newstloading extends NewstState {}

final class Newstfailer extends NewstState {
  final String message;
  const Newstfailer(this.message);
}

final class Newstsucsess extends NewstState {
  final List<Bookmodel> books;
  const Newstsucsess(this.books);
}

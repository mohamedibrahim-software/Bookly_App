part of 'feature_cubit.dart';

sealed class FeatureState extends Equatable {
  const FeatureState();

  @override
  List<Object> get props => [];
}

final class FeatureInitial extends FeatureState {}

final class Featureloading extends FeatureState {}

final class Featurefailer extends FeatureState {
  final String message;
  const Featurefailer(this.message);
}

final class Featuresucsess extends FeatureState {
  final List<Bookmodel> books;
  final bool isfromcache;
  const Featuresucsess(this.books, {required this.isfromcache});
}

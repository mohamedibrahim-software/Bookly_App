import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class Searchrepo {
  Future<Either<Failure, List<Bookmodel>>> fetchsearchbooks({
    required String search,
  });
}

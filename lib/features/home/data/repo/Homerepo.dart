import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchNewsetBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchitems({
    required String category,
  });
}

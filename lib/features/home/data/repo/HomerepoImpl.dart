import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repo/Homerepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimpl implements HomeRepo {
  final ApiService apiservice;

  Homerepoimpl(this.apiservice);

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchNewsetBooks() async {
    try {
      var response = await apiservice.get(
        endpoint: 'volumes?filter=free-ebooks&Sorting=newest&q=computer ',
      );

      // Bookmodel bookmodel = Bookmodel.fromJson(response);
      List<Bookmodel> booklist = [];
      for (var book in response['items']) {
        booklist.add(Bookmodel.fromJson(book));
      }

      return right(booklist);
    } on DioException catch (e) {
      return left(serverfalire.fromdioerrore(e));
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() async {
    try {
      var response = await apiservice.get(
        endpoint: 'volumes?filter=free-ebooks&q=flutter',
      );

      // Bookmodel bookmodel = Bookmodel.fromJson(response);
      List<Bookmodel> booklist = [];
      for (var book in response['items']) {
        booklist.add(Bookmodel.fromJson(book));
      }

      return right(booklist);
    } on DioException catch (e) {
      return left(serverfalire.fromdioerrore(e));
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchitems({
    required String category,
  }) async {
    try {
      var response = await apiservice.get(
        endpoint:
            'volumes?filter=free-ebooks&Sorting=relevance &q=Programming ',
      );

      // Bookmodel bookmodel = Bookmodel.fromJson(response);
      List<Bookmodel> booklist = [];
      for (var book in response['items']) {
        booklist.add(Bookmodel.fromJson(book));
      }

      return right(booklist);
    } on DioException catch (e) {
      return left(serverfalire.fromdioerrore(e));
    }
  }
}

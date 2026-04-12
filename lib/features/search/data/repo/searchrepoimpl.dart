import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/search/data/repo/searchrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Searchrepoimpl implements Searchrepo {
  ApiService apiscrvice;
  Searchrepoimpl(this.apiscrvice);

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchsearchbooks({
    required String search,
  }) async {
    try {
      var response = await apiscrvice.get(endpoint: 'volumes?q=$search');
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

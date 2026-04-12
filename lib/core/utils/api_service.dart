import 'package:dio/dio.dart';

class ApiService {
  final basurl = 'https://www.googleapis.com/books/v1/';
  final key = '&key=AIzaSyCdFJSGU-62BpgLp-FJ9-L_maTeSMWeqcc';
  final Dio dio;
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    Response response = await dio.get('$basurl$endpoint$key');
    return response.data;
  }
}

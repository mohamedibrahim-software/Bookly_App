import 'package:dio/dio.dart';

abstract class Failure {
  final String errore;
  const Failure(this.errore);
}

class serverfalire extends Failure {
  serverfalire(super.errore);
  factory serverfalire.fromdioerrore(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        throw UnimplementedError('connection Timeout with api server');
      case DioExceptionType.sendTimeout:
        throw UnimplementedError('send Timeout with api server');
      case DioExceptionType.receiveTimeout:
        throw UnimplementedError('receive Timeout with api server');
      case DioExceptionType.badCertificate:
        throw UnimplementedError('badCertificate with api server');
      case DioExceptionType.badResponse:
        return serverfalire.fromresponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );

      case DioExceptionType.cancel:
        throw UnimplementedError('cancel with api server');
      case DioExceptionType.connectionError:
        throw UnimplementedError('connectionError with api server');
      case DioExceptionType.unknown:
        throw UnimplementedError('unknow with api server');
    }
  }
  factory serverfalire.fromresponse(int statusecode, dynamic response) {
    if (statusecode == 400 ||
        statusecode == 401 ||
        statusecode == 403 ||
        statusecode == 429) {
      return serverfalire(response['error']['message']);
    } else if (statusecode == 404) {
      return serverfalire('your requset not found'); //FOR DEVALPORE
    } else if (statusecode == 500) {
      return serverfalire('internal server errore');
    } else {
      return serverfalire('opps ther was an errore ');
    }
  }
}

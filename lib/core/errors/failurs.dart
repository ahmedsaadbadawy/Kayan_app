import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromSupabase(dynamic e) {
    if (e is PostgrestException) {
      return ServerFailure(e.message);
    } else if (e is AuthException) {
      return ServerFailure(e.message);
    } else if (e.toString().contains('SocketException') ||
        e.toString().contains('Network')) {
      return ServerFailure('No Internet Connection');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
  factory ServerFailure.fromDioException(DioException e) {
    // return ServerFailure(message);
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.statusCode,
          e.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Receive timeout was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}

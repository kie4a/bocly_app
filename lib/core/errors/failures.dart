import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failures {
  final String errMassage;

  Failures({required this.errMassage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMassage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMassage: "Connection timeout with Api Server");

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMassage: "Send timeout with Api Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMassage: "Receive timeout with Api Server");

      case DioExceptionType.badCertificate:
        return ServerFailure(errMassage: "Bad certificate with Api Server");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response?.statusCode ?? 0,
          dioError.response?.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errMassage: "Request to Api Server was canceled");

      case DioExceptionType.connectionError:
        return ServerFailure(errMassage: "No Internet Connection");

      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServerFailure(errMassage: "No Internet Connection");
        }

        return ServerFailure(
          errMassage: "Oops There was an Error, please try again",
        );
  default:
  return ServerFailure(errMassage: "Oops There was an Error, please try again");

    }
  
    
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMassage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMassage: "Your request not found, please try later!",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMassage: "Internal Server error, Please try later",
      );
    } else {
      return ServerFailure(
        errMassage: "Oops There was an Error, please try again",
      );
    }
  }
}

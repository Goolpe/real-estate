import 'dart:developer';

class HttpException implements Exception {
  HttpException(this.message) {
    log(message);
  }

  final String message;
}

class ServerException extends HttpException {
  ServerException([String message = '']) : super('Server error: $message');
}

class NoInternetException extends HttpException {
  NoInternetException() : super('No Internet connection');
}

class ClientException extends HttpException {
  ClientException([String message = '']) : super('Client error: $message');
}

class UnknownException extends HttpException {
  UnknownException([String message = '']) : super('Unknown error: $message');
}

class NotFoundException extends HttpException {
  NotFoundException() : super('Not Found');
}

class TimeOverException extends HttpException {
  TimeOverException() : super('Time out of request');
}

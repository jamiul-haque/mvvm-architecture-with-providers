class AppExcaption implements Exception {
  final _message;
  final _prefix;
  AppExcaption([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppExcaption {
  FetchDataException([String? massage])
      : super(massage, 'Error during communication no server connection');
}

class BadRequestException extends AppExcaption {
  BadRequestException([String? massage]) : super(massage, 'Invalid Request');
}

class UnauthorizedException extends AppExcaption {
  UnauthorizedException([String? massage])
      : super(massage, 'Unauthorized Request');
}

class InvalidInputException extends AppExcaption {
  InvalidInputException([String? massage]) : super(massage, 'Invalid Input');
}

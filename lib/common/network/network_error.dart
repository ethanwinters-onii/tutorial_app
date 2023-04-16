import 'package:equatable/equatable.dart';

abstract class NetworkError extends Equatable {
  final String message;

  const NetworkError({required this.message});

  @override
  List<Object?> get props => [];
}

class SystemFailure extends NetworkError {
  const SystemFailure({required String message}) : super(message: message);
}

class NoInternetConnection extends NetworkError {
  const NoInternetConnection({required String message})
      : super(message: message);
}

class NoDataFound extends NetworkError {
  const NoDataFound({required String message}) : super(message: message);
}

class DataConsistencyError extends NetworkError {
  const DataConsistencyError({required String message})
      : super(message: message);
}

class NoCacheData extends NetworkError {
  const NoCacheData({required String message}) : super(message: message);
}

//Error when excute server function
class NoPermission extends NetworkError {
  const NoPermission({required String message}) : super(message: message);
}

// To remove
class AuthFailure extends NetworkError {
  final String? code;
  const AuthFailure({this.code, required String message})
      : super(message: message);

  @override
  List<Object?> get props => [code];
}

class ServerFailureWithMessage extends NetworkError {
  const ServerFailureWithMessage({required String message})
      : super(message: message);
}

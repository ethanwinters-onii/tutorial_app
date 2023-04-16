import 'package:dartz/dartz.dart';
import 'package:tutorial_app/common/network/network_error.dart';
import 'package:tutorial_app/modules/authentication/models/user_info.dart';

abstract class Authentication {
  Future<Either<NetworkError, UserInfo>> login({required String username, required String password});
}
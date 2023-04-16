import 'package:tutorial_app/common/network/restful/restful_module.dart';
import 'package:tutorial_app/common/network/restful/restful_module_impl.dart';
import 'package:tutorial_app/modules/authentication/models/user_info.dart';
import 'package:tutorial_app/common/network/network_error.dart';
import 'package:dartz/dartz.dart';
import 'package:tutorial_app/modules/authentication/repos/auth.dart';

class AuthImpl extends Authentication {
  static AuthImpl _instance = AuthImpl._internal();
  AuthImpl._internal();
  static AuthImpl get instance => _instance;

  @override
  Future<Either<NetworkError, UserInfo>> login(
      {required String username, required String password}) {
    final restfulAPI = RestfulModuleImpl();
    try {
      
    } catch (e) {

    }
  }
}

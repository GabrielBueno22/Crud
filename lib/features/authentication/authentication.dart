import '../../models/authentication_data.dart';
import '../../models/authentication_result.dart';

abstract class Authentication {
  Future<AuthenticationResult> auth({required AuthenticationData data});
}

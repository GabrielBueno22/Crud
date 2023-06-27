import 'package:crud_app/features/authentication/authentication.dart';
import 'package:crud_app/models/authentication_data.dart';

import '../../../models/authentication_result.dart';

class LocalAuthenticationService implements Authentication {
  @override
  Future<AuthenticationResult> auth({required AuthenticationData data}) {
    // TODO: implement auth
    throw UnimplementedError();
  }
}

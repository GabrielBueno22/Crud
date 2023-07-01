import 'package:crud_app/features/authentication/authentication.dart';
import 'package:crud_app/infra/sqlite.dart';
import 'package:crud_app/models/authentication_data.dart';

import '../../../models/authentication_result.dart';

class LocalAuthenticationService implements Authentication {
  final LocalDb localDb;

  LocalAuthenticationService(this.localDb);
  @override
  Future<AuthenticationResult> auth({required AuthenticationData data}) {
    // TODO: implement auth
    throw UnimplementedError();
  }
}

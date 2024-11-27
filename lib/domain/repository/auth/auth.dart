import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/service_locator.dart';

abstract class AuthRepository {
  Future<void> signin();
  Future<void> signup(CreateUserReq createUserReq) async {
    await s1<AuthFirebaseService>().signup(createUserReq);
  }
}

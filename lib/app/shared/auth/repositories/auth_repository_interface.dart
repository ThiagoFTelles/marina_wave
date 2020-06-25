//import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
//  Future<FirebaseUser> getUser();
  Future getUser();
//  Future<FirebaseUser> getGoogleLogin();
  Future getGoogleLogin();
  Future getFacebookLogin();
  Future getEmailPasswordLogin();
  Future<String> getToken();
  Future getLogout();
}

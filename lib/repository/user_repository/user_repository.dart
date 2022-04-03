import 'package:bloccounter/repository/user_repository/user.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? user;

  Future<User?> getUser() async {
    if (user != null) {
      return user;
    }
    return Future.delayed(const Duration(milliseconds: 300),
        () => user = User(const Uuid().v4()));
  }
}

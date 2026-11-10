import 'package:p0801_2/entities/user.dart';

abstract class IUserRepository {
  Future<User?> getUser(int id);
}

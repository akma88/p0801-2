import 'package:p0801_2/entities/user.dart';
import 'package:p0801_2/repository_interface/i_user_repository.dart';

class LocalUserRepository implements IUserRepository {
  @override
  Future<User?> getUser(int id) async {
    return User(id: id);
  }
}

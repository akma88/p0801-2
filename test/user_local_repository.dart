import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:p0801_2/entities/user.dart';
import 'package:p0801_2/repository_interface/i_user_repository.dart';
import 'package:p0801_2/user_remote_repository/user_local_repository.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
  });

  test('Get Local User Repository (success)', () async {
    LocalUserRepository localUserRepository = LocalUserRepository();

    User? user = await localUserRepository.getUser(12);

    expect(localUserRepository, isA<IUserRepository>());
    expect(user?.id, equals(12));
  });
}

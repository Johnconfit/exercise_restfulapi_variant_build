import 'package:flutter_restfulapi/library/library.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late CharacterRepo characterRepo;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    characterRepo = CharacterRepo(mockApiClient);
  });

  test('fetchData should return Right(Character) on success', () async {});

  test('fetchData should return Left(ServerError) on failure', () async {});
}

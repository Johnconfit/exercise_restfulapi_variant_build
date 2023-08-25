import 'package:dartz/dartz.dart';
import 'package:flutter_restfulapi/library/library.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'api_client_test.mocks.dart';

@GenerateMocks([ApiRepo, ApiCall])
void main() {
  late ApiClient apiClient;
  late MockApiCall mockApiCall;

  setUp(() {
    mockApiCall = MockApiCall();
    apiClient = ApiClient(mockApiCall);
  });

  test('fetchData should return data on success', () async {
    const url = '//mockurl.com';
    final expectedData = {'key': 'value'};

    when(mockApiCall.get(any)).thenAnswer((_) async => Right(expectedData));

    final result = await apiClient.fetchData(url);

    expect(result, expectedData);
  });

  test('fetchData should return Left(ServerError) on failure', () async {
    const url = '//mockurl.com';

    when(mockApiCall.get(any)).thenAnswer((_) async => Left(ServerError()));

    try {
      final result = await apiClient.fetchData(url);
      fail('Expected a ServerError but got $result');
    } catch (error) {
      expect(error, isA<ServerError>());
    }
  });
}

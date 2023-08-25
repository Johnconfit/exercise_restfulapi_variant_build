import 'package:dartz/dartz.dart';

import '../../../library/library.dart';

class CharacterRepo {
  final ApiClient apiClient;

  CharacterRepo(this.apiClient);

  Future<Either<Failure, Character>> fetchData(String url) async {
    try {
      final json = await apiClient.fetchData(url);
      return Right(Character.fromJson(json));
    } on ServerError catch (serverError) {
      return Left(serverError);
    } catch (e) {
      return Left(ServerError(messageError: e.toString()));
    }
  }
}

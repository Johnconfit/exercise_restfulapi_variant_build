import 'package:dartz/dartz.dart';

import '../../library/library.dart';

class ApiCall {
  Dio dio = Dio();

  ApiCall() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers["Authorization"] = "";
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException error, handler) {
        return handler.next(error);
      },
    ));
  }

  Future<Either<Failure, Map<String, dynamic>>> get(String url) async {
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        var responseData = json.decode(response.data);

        return Right(responseData);
      } else {
        return Left(ServerError(codeError: response.statusCode.toString()));
      }
    } catch (error) {
      return Left(ServerError(codeError: error.toString()));
    }
  }
}

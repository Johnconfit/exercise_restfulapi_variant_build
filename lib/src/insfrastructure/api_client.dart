import '../../library/library.dart';

class ApiClient extends ApiRepo {
  final ApiCall apiCall;

  ApiClient(this.apiCall);

  @override
  Future<Map<String, dynamic>> fetchData(String url) async {
    final result = await apiCall.get(url);
    return result.fold(
      (failure) => throw failure,
      (data) => data,
    );
  }
}

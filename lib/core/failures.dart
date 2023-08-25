abstract class Failure {}

class ServerError extends Failure {
  String? codeError;
  String? messageError;
  ServerError({this.codeError, this.messageError});
}

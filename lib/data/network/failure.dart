abstract class Failure {
  final String message;

  Failure({required this.message});
}

class NoInternet implements Failure {
  @override
  final String message;

  NoInternet({this.message = "No Internet connection"});
}

class ServerError implements Failure {
  @override
  final String message;

  ServerError({this.message = "Something is not right! Try again please."});
}

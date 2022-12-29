class ApiEndPoints {
  static final String baseUrl = 'https://10.0.2.2:8000/api/v1/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'auth/register/';
  final String loginEmail = 'auth/login/';
  final String googleConnect = 'auth/google/connect/';
}
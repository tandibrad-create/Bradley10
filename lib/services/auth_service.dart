class AuthService {
  String? currentUser;

  void login(String user) {
    if (user.isEmpty) {
      throw Exception("Username cannot be empty");
    }
    currentUser = user;
  }

  void logout() {
    currentUser = null;
  }

  bool get isLoggedIn => currentUser != null;

  String? getCurrentUser() => currentUser;
}

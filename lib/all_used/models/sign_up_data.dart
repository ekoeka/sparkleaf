class SignUpData {
  String name;
  String username;
  String email;
  String phoneNumber;
  String password;

  SignUpData({
    required this.name,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });
  // Metode untuk mereset semua data
  void resetFields() {
    name = '';
    username = '';
    email = '';
    phoneNumber = '';
    password = '';
  }
}

bool isValidEmail(String email) {
  if (email.isEmpty) return false;
  final pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@"
      r"[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?"
      r"(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)*$";
  final regExp = RegExp(pattern);
  return regExp.hasMatch(email.trim());
}

bool isValidPassword(String password) {
  // Minimum 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special char
  final RegExp passwordRegex = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
  );

  return passwordRegex.hasMatch(password);
}

bool isValidName(String name) {
  if (name.trim().isEmpty) return false;

  // Must be 3 characters or more and only letters + spaces
  final regex = RegExp(r"^[a-zA-Z\s]{3,}$");

  return regex.hasMatch(name.trim());
}

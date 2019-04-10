final emailRegExp = RegExp(r"^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

bool isValidEmailAddress(String value) {
  return emailRegExp.hasMatch(value);
}

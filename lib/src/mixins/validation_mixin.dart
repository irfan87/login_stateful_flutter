class ValidationMixin {
  String validateEmal(String value) {
    // return null if valid
    // otherwise, return the error message if not valid
    if (!value.contains('@')) {
      return 'Please enter the valid email';
    }

    return null;
  }

  String validatePassword(String value) {
    // return null if valid
    // otherwise, return the error message if not valid
    if (value.length < 4) {
      return 'Password must not less than 4 characters';
    }

    return null;
  }
}

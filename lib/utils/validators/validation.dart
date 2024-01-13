class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression for email validation
    final RegExp emailRegExp = RegExp(
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
        caseSensitive: false,
        multiLine: false);

    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    // Regular expression for password validation
    final RegExp passwordRegExp = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_\-+={}[\]|;:"<>,./?])(?!.*\s).{6,}$',
        caseSensitive: false,
        multiLine: false);

    if (!passwordRegExp.hasMatch(value)) {
      return 'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character';
    }

    return null;
  }

  static String? validateOldPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Old password is required';
    }
    if (value.length < 6) {
      return 'Old password must be at least 6 characters';
    }
    return null;
  }

  static String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'New password is required';
    }
    if (value.length < 6) {
      return 'New password must be at least 6 characters';
    }
    return null;
  }

  static String? validateConfirmNewPassword(
      String? newPassword, String? confirmNewPassword) {
    if (newPassword != confirmNewPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? validateConfirmPassword(
      String? password, String? confirmPassword) {
    if (password != confirmPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Regular expression for phone number validation

    final RegExp phoneNumberRegExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)',
        caseSensitive: false, multiLine: false);

    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    // Regex for a 10 digit phone number
    final RegExp tenDigitsPhoneNumberRegExp = RegExp(r'(^(?:[+0]9)?[0-9]{10}$)',
        caseSensitive: false, multiLine: false);

    if (!tenDigitsPhoneNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    if (value.length < 10) {
      return 'Phone number must be at least 10 characters';
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Address is required';
    }
    return null;
  }

  static String? validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return 'City is required';
    }
    return null;
  }

  static String? validateState(String? value) {
    if (value == null || value.isEmpty) {
      return 'State is required';
    }
    return null;
  }

  static String? validateZipCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Zip code is required';
    }
    return null;
  }

  static String? validateCountry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Country is required';
    }
    return null;
  }

  static String? validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card number is required';
    }
    return null;
  }

  static String? validateCardHolderName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card holder name is required';
    }
    return null;
  }

  static String? validateCardExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card expiry date is required';
    }
    return null;
  }

  static String? validateCardCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card CVV is required';
    }
    return null;
  }

  static String? validateCardType(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card type is required';
    }
    return null;
  }
}

class TextFieldValidation {
  static String? email({required String? value}) {
    final emailRegExp = RegExp(
      r"[a-z0-9!#$%&'+/=?^_`{|}~-]+@[a-z0-9](?:[a-z0-9-]*[a-z0-9])?(?:\.[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)+",
    );
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email address';
    }
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? lisenceNumber({required String value}) {
    final lisenceRegExp = RegExp(r'^[A-Z]');
    if (value.isEmpty) {
      return 'Don\'t leave Empty';
    }
    if (!lisenceRegExp.hasMatch(value)) {
      return 'Please enter a valid number';
    }
    return null;
  }

  static String? mobile({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length != 10) {
      return 'Mobile Number Should be 10 Digit';
    }
    return null;
  }

  static String? otp({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length != 4) {
      return 'OTP Should be 4 Digit';
    }
    return null;
  }

  static String? name({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length < 4) {
      return 'Name Should be greater then 4 character';
    }
    return null;
  }

  static String? notEmpty({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    }
    return null;
  }

    static String? notNull({required double? value}) {
    if (value == null) {
      return 'Invalid Input';
    }

    return null;
  }

  static String? password({required String value}) {
    if (value.trim() == '') {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Please enter your password';
    }
    return null;
  }

  static String? dob(DateTime? value) {
    if (value == null) {
      return 'Please enter Date of birth.';
    }
    return null;
  }

  static String? pinCode(String value) {
    if (value.trim().isEmpty) {
      return 'Don\'t leave empty';
    } else if (!RegExp(r'^\d{6}$').hasMatch(value)) {
      return 'Enter a Valid PIN code';
    }
    return null;
  }

  static String? ifsc({required String? value}) {
    final ifscCodeRegExp = RegExp(
      r'^[A-Za-z]{4}0[A-Z0-9]{6}$',
    );
    if (value == null || value.isEmpty) {
      return 'IFSC code cannot be empty';
    }

    if (!ifscCodeRegExp.hasMatch(value)) {
      return 'Invalid IFSC code';
    }

    return null;
  }

  static String? fullName({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    if (value.length < 3) {
      return 'Name must be at least 3 characters long';
    }
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Name should contain alphabetic characters only';
    }
    return null;
  }

  static String? gst({required String? value}) {
    {
      final RegExp gstRegex = RegExp(
        r"^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$",
      );
      if (value == null || value.isEmpty) {
        return 'GST Number is required';
      }
      if (!gstRegex.hasMatch(value)) {
        return 'Please Enter Valid GST Number';
      }
      return null;
    }
  }

  static String? address({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length < 15) {
      return 'Address Should be greater then 15 character';
    }
    return null;
  }

  static String? adhaar({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length < 12) {
      return 'Adhaar Number Should be 12 Digits';
    } else if (value.length > 12) {
      return 'Adhaar Number Should be 12 Digits';
    }
    return null;
  }

  static String? policeVerificationNumber({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length < 15) {
      return '15 digits required.';
    } else if (value.length > 15) {
      return '15 digits required.';
    }
    return null;
  }

  static String? chasisNo({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length < 6) {
      return 'ChasisNo Should be greater then 6 character';
    }
    return null;
  }

  static String? doi(String? value) {
    if (value == null) {
      return 'Please enter Date of issue.';
    }
    return null;
  }

  static String? doe(String? value) {
    if (value == null) {
      return 'Please enter Date of expiry.';
    }
    return null;
  }

  static String? dropDown(String? value) {
    if (value == null) {
      return "Don't Leave Empty.";
    }
    return null;
  }

  static String? location({required String value}) {
    if (value.trim() == '') {
      return 'Don\'t leave Empty';
    } else if (value.length <= 1) {
      return 'Location Required';
    }
    return null;
  }

  static String? passengerCount({required int? value}) {
    if (value == null) {
      return 'Please ensure you enter atleast 1 passenger.';
    }
    return null;
  }
}

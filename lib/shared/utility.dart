import 'package:flutter/material.dart';

class Utility {
  static String? nameValidator(String? name) {
    if (name!.isEmpty) {
      return " Please enter your name";
    }
    return null;
  }

  static String? categoryNameValidator(String? name) {
    if (name!.isEmpty) {
      return " Please enter your category name";
    }
    return null;
  }

  static String? productNameValidator(String? name) {
    if (name!.isEmpty) {
      return " Please enter your category name";
    }
    return null;
  }

  static String? productPriceValidator(String? name) {
    if (name!.isEmpty) {
      return "Please enter your product price";
    }
    return null;
  }

  static String? phoneNumberValidator(String? phoneNumber) {
    if (phoneNumber?.length != 10 ||
        int.tryParse(phoneNumber.toString()) == null) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? passwordLengthValidator(String? password) {
    if (password!.length < 6) {
      return 'password should be atleast 6 in length';
    }
    return null;
  }

  static String? passwordSameValidator(
      String? setPassword, String? confirmPassword) {
    if (confirmPassword!.length < 6) {
      return 'Pleas enter a valid phone number';
    } else if (setPassword != confirmPassword) {
      return 'Both passwords should be same';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    final RegExp emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$',
    );

    if (value!.isEmpty) {
      return 'Please enter an email address';
    } else if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? otpValidator(String? otp) {
    if (otp!.length != 6) {
      return 'Pleas enter a valid otp';
    }
    return null;
  }

  static String? shopNameValidator(String? name) {
    if (name!.isEmpty) {
      return " Please enter your shop name";
    }
    return null;
  }

  static String? shopLocationValidator(String? name) {
    if (name!.isEmpty) {
      return " Please set your shop location";
    }
    return null;
  }

  static String? shopAddressValidator(String? name) {
    if (name!.isEmpty) {
      return " Please enter your shop address";
    }
    return null;
  }

  String? youTubeLinkValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      // Regular expression pattern to match YouTube video URLs
      RegExp regExp = RegExp(
        r'^((?:https?:)?\/\/)?((?:www|m)\.)?((?:youtube(-nocookie)?\.com|youtu.be))(\/(?:[\w\-]+\?v=|embed\/|live\/|v\/)?)([\w\-]+)(\S+)?$',
        // caseSensitive: false,
        // multiLine: false,
      );

      bool isValidLink = regExp.hasMatch(value);
      if (!isValidLink) {
        return 'Invalid YouTube link';
      }
    }

    return null; // Return null if the link is valid or empty
  }

  String? extractYouTubeVideoId(String? link) {
    if (link == null || link.isEmpty) {
      return null;
    }

    // Regular expression pattern to match YouTube video IDs
    RegExp regExp = RegExp(
      r'^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=|youtube.com\/v\/)([^#\\?]*).*',
      caseSensitive: false,
      multiLine: false,
    );

    Match? match = regExp.firstMatch(link);
    if (match != null && match.groupCount >= 2) {
      return match.group(2); // Extract the video ID
    }

    return null; // Return null if the link is not a valid YouTube link
  }

  static String getInitials(String fullName) => fullName.isNotEmpty
      ? fullName.trim().split(' ').map((l) => l[0]).take(2).join().toUpperCase()
      : '';

  Future<DateTime?> selectDate(BuildContext context, DateTime initalDate,
      DateTime firstDate, DateTime lastDate) async {
    return await showDatePicker(
        context: context,
        initialDate: initalDate,
        firstDate: firstDate,
        lastDate: lastDate);
  }
}

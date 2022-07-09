library generate_username;

import 'dart:math';

class CreateUsername {
  /// Generate username
  /// <br />
  /// Example:
  /// ```
  /// string firstName = "tarik";
  /// string secondName = "sune";
  /// bool isNameAndSurname = true;
  /// .generate_name(firstName, secondName, isNameAndSurname); //tariksune
  /// .generate_name(firstName, secondName, !isNameAndSurname); //sunetarik
  /// ```
  String generate_name(
      String firstName, String secondName, bool isNameAndSurname) {
    if (!isNameAndSurname) {
      String holder = "";
      holder = firstName;
      firstName = secondName;
      secondName = holder;
    }

    return (firstName + secondName).toLowerCase();
  }

  /// Generate username for name, separator( _ - * + & / etc. ) and lastname
  /// <br />
  /// Example:
  /// ```
  /// string name = "tarik";
  /// string surname = "sune";
  /// string separator = "_";
  /// .generate_name_separator_surname(name, separator, surname); //tarik_sune
  /// ```
  String generate_name_separator_surname(
      String name, String separator, String surname) {
    name.replaceAll(RegExp(r'[a-zA-Z0-9_]'), '');
    surname.replaceAll(RegExp(r'[a-zA-Z0-9_]'), '');
    return (name + separator + surname).toLowerCase();
  }

  /// Generate username with nameorsurname and birthdate
  /// <br />
  /// Example:
  /// ```
  /// string name = "tarik";
  /// int birthdate = 1995;
  /// bool isYear = true;
  /// .generate_name_with_birhdate(name, birthdate, isYear); //tarik1995
  /// .generate_name_with_birhdate(name, birthdate, !isYear); //tarik95
  /// ```
  String generate_name_with_birhdate(String name, int birthdate, bool isYear) {
    String year = "";
    if (isYear) {
      year = birthdate.toString();
    } else {
      year = birthdate.toString().substring(2, 4);
    }

    return (name + year).toLowerCase();
  }

  /// Generate username with random number, range is yours.
  /// <br /> The range numbers always turns into a positive value.
  /// <br />
  /// Example:
  /// ```
  /// string name = "tarik";
  /// int min = 5;
  /// int max = 15;
  /// .generate_name_with_random_number(name, min, max); //tarik13
  /// ```
  String generate_name_with_random_number(String name, int min, int max) {
    min = min.abs();
    max = max.abs();
    return name.toLowerCase() +
        (new Random().nextInt(max - min) + min).toString();
  }

  /// Generate username from your email address
  /// <br />
  /// Example:
  /// ```
  /// string email = "info@tariksune.com";
  /// .generate_username_from_email(email); //info
  /// ```
  String generate_username_from_email(String email) {
    if (email.contains("@")) {
      email = email.substring(0, email.indexOf("@"));
    } else {
      print("Please write a valid email address!");
    }
    return email.toLowerCase();
  }
}

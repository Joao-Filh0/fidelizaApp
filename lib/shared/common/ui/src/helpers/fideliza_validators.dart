import 'package:flutter/material.dart';

class FidelizaValidators {
  static FormFieldValidator<String> multiple(
      List<FormFieldValidator<String>> v) {
    return (value) {
      for (final validator in v) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }

  static FormFieldValidator<String> emailValidator(String messageError) =>
          (text) {
        if (text != null) {
          final RegExp pattern =
          RegExp(r'([a-z]|[0-9]|[._-])+@[a-z]+\.[a-z]+\.?[a-z]{2,3}');
          if (!pattern.hasMatch(text)) {
            return messageError;
          }
        }
        return null;
      };
}

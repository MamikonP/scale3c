import 'package:flutter/material.dart';

import '../constants/input_type.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.controller,
    this.formKey,
    this.borderRadius,
    this.hint,
    this.inputType,
    super.key,
  });

  final TextEditingController controller;
  final GlobalKey<FormState>? formKey;
  final double? borderRadius;
  final String? hint;
  final FieldInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      controller: controller,
      obscureText: inputType == FieldInputType.password,
      keyboardType: _keyboardType,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide: BorderSide.none,
        ),
        fillColor: Theme.of(context).colorScheme.secondary,
        hintText: hint,
      ),
    );
  }

  TextInputType get _keyboardType {
    if (inputType == FieldInputType.email) {
      return TextInputType.emailAddress;
    }
    return TextInputType.text;
  }
}

import 'package:flutter/material.dart';

mixin AuthControllerMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode focusNode = FocusNode();
}

import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool showPassword;
  final VoidCallback toggleShowPassword;

  const PasswordField({
    super.key,
    required this.controller,
    required this.showPassword,
    required this.toggleShowPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: !showPassword,
      decoration: InputDecoration(
        suffix: InkWell(
          onTap: toggleShowPassword,
          child: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
        ),
        labelText: '  Enter the Password',
        hintText: " Password",
        constraints: const BoxConstraints(
          maxWidth: 360,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '    Please Enter the password ';
        }
        return null;
      },
    );
  }
}

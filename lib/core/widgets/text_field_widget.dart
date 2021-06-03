import 'package:basketball_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget icon;
  final String label;
  final TextInputType keyBoard;
  final bool obscureField;
  final bool enabledField;
  final Function(String) onChanged;

  const TextFieldWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.keyBoard,
    required this.obscureField,
    required this.enabledField,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabledField,
      keyboardType: keyBoard,
      obscureText: obscureField,
      cursorColor: AppColors.grey,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: AppColors.orange),
        focusColor: AppColors.orange,
        filled: true,
        fillColor: AppColors.white,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.orange),
        ),
        labelText: label,
        prefixIcon: icon,
        counterText: '',
        errorStyle: TextStyle(height: 1.5),
      ),
    );
  }
}

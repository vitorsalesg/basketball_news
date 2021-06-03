import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Widget icon;
  final String label;
  final TextInputType keyBoard;
  final bool obscureField;
  final TextEditingController controlerField;
  final bool enabledField;
  final int lengthField;

  const TextFormFieldWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.keyBoard,
    required this.obscureField,
    required this.controlerField,
    required this.enabledField,
    required this.lengthField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabledField,
      keyboardType: keyBoard,
      obscureText: obscureField,
      controller: controlerField,
      cursorColor: Colors.grey,
      maxLength: lengthField,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.orange),
        focusColor: Colors.orange,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.orange),
        ),
        labelText: label,
        prefixIcon: icon,
        counterText: '',
        errorStyle: TextStyle(height: 1.5),
      ),
      /*  validator: (value) {
        if (value.isEmpty) {
          return "Campo obrigatório.";
        } else if (value.length > lengthField) {
          return "Você ultrapassou o limite de caracteres.\nRemova ${value.length - lengthField} para continuar.";
        } else if (keyBoard == TextInputType.number && !_isNumeric(value)) {
          return "Digite apenas números.";
        }

        return null;
      }, */
    );
  }

  /* bool _isNumeric(String value) {
    if (value == null) return false;
    return int.tryParse(value.replaceAll(' ', '')) != null;
  } */
}

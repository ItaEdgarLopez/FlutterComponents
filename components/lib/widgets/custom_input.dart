import "package:flutter/material.dart";

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String fromProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon, 
    this.keyboardType, 
    this.isPassword = false, 
    required this.fromProperty, 
    required this.formValues
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      /*  initialValue: 'Edgar', */
      textCapitalization: TextCapitalization.words,
      obscureText: isPassword,
      keyboardType: keyboardType,
      onChanged: (value) {
        formValues [fromProperty] = value;
      },
      validator: (value) {
        if (value == null) return ' Este cambio es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        /*  prefixIcon: Icon ( Icons.verified_outlined), */
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        /* border : OutlineInputBorder(
          borderRadius: BorderRadius.only( 
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            )
        ) */
      ),
    );
  }
}

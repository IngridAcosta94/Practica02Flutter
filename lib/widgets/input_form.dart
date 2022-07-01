







import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {

final String? labelText, hintText, errorText, helperText, value;
  final IconData? icon;
  final bool focused, autoValidation, readOnly;
  final TextInputType keyboardType;
  final bool isRequired;



  const InputForm({Key? key,
  required this.labelText,
  required this.hintText,
  required this.errorText,
  required this.helperText,
  required this.value,
  required this.icon,
  required this.focused,
  required this.autoValidation,
  required this.readOnly,
  required this.keyboardType,
  this.isRequired = false,
  
  }) : super(key: key);


//Funciones

String? onValidate(String value) {
    if (value.isEmpty) {
      return 'This $hintText field is required';
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return 
        TextFormField(
          initialValue: value,
          autofocus: focused,
          keyboardType: keyboardType,
          textCapitalization: TextCapitalization.words,
          readOnly: readOnly,
          validator: isRequired ? (value) => onValidate(value ?? '') : null,
          autovalidateMode: isRequired
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,


decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null,
        helperText: helperText,
      ),



      );
   }

}
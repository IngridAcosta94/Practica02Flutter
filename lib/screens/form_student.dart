


import 'package:flutter/material.dart';

import '../widgets/input_form.dart';






class StudentForm extends StatefulWidget {
  StudentForm({Key? key}) : super(key: key);

  @override
  State<StudentForm> createState() => _StudentFormState();
  
}

class _StudentFormState extends State<StudentForm> {
  
  String? labelText, hintText, errorText, helperText, value;
  IconData? icon;
  bool focused = false;
  bool autoValidation = false;
  bool readOnly = false;
  TextInputType keyboardType = TextInputType.numberWithOptions() ;
  bool isRequired = false;
  


//required this.labelText,
  //required this.hintText,
  //required this.errorText,
  //required this.helperText,
  //required this.value,
  //required this.icon,
  //required this.focused,
  //required this.autoValidation,
  //required this.readOnly,
  //required this.keyboardType,
  //this.isRequired = false,


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
       InputForm(labelText: labelText, hintText: hintText, errorText: errorText, helperText: helperText, value: value, icon: icon, focused: focused, autoValidation: autoValidation, readOnly: readOnly, keyboardType: keyboardType)
        
      ],
      ),
      ),
     // bottomNavigationBar: ButtomMenu( items: AppRoute.listScreens,),

    );
  }
}
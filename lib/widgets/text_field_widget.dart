import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key,this.controller, this.prefixIcon, this.hintText,this.inputType = TextInputType.text});
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? hintText;
  final TextInputType inputType;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.inputType,
      obscureText: widget.inputType == TextInputType.visiblePassword ? showPass : false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12.0),
        prefixIcon: Icon(widget.prefixIcon),
        suffixIcon: widget.inputType == TextInputType.visiblePassword? IconButton(
          onPressed: () {
            setState(() {
              showPass =! showPass;
            });
          },
          icon:  Icon( showPass? CupertinoIcons.eye : CupertinoIcons.eye_slash ),
        ) : null,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CupertinoColors.activeBlue),
          borderRadius: BorderRadius.circular(16)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: CupertinoColors.activeBlue),
            borderRadius: BorderRadius.circular(16)
        ),
      ),

    );
  }
}
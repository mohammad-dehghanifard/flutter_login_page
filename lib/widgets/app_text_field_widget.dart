import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page/resources/solid_colors.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget({super.key, this.controller, required this.icon, this.hintText,this.inputType = TextInputType.text});
  final TextEditingController? controller;
  final String? hintText;
  final IconData icon;
  final TextInputType inputType;

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        obscureText: widget.inputType == TextInputType.visiblePassword? hidePassword : false,
        controller: widget.controller,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: textTheme.bodyMedium!.apply(color: SolidColors.lightGrayText),
          filled: true,
          suffixIcon: widget.inputType == TextInputType.visiblePassword ? IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            icon: Icon(hidePassword? CupertinoIcons.eye : CupertinoIcons.eye_slash,color: SolidColors.lightGrayText),
          ) : null,
          fillColor: colorScheme.primaryContainer,
          prefixIcon: Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(left: 12.0),
            decoration: const BoxDecoration(
              color: SolidColors.lightGrayText,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              )
            ),
            child: Icon(widget.icon,color: colorScheme.primary,size: 26),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.primary),
            borderRadius: BorderRadius.circular(12)
          )
        ),
      ),
    );
  }
}

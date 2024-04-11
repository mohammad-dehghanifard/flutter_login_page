import 'package:flutter/material.dart';
import 'package:flutter_login_page/widgets/app_text_field_widget.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppTextFieldWidget(icon: Icons.person,hintText: "نام کاربری"),
        SizedBox(height: 12),
        AppTextFieldWidget(icon: Icons.lock,hintText: "رمز عبور",inputType: TextInputType.visiblePassword),
        SizedBox(height: 12),
        AppTextFieldWidget(icon: Icons.email,hintText: "ایمیل"),
        SizedBox(height: 12),
        AppTextFieldWidget(icon: Icons.phone_android,hintText: "شماره تلفن"),
        SizedBox(height: 64),
      ],
    );
  }
}
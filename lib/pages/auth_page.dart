import 'package:flutter/material.dart';
import 'package:flutter_login_page/widgets/app_button_widget.dart';
import 'package:flutter_login_page/widgets/auth_button.dart';
import 'package:flutter_login_page/widgets/login_widget.dart';
import 'package:flutter_login_page/widgets/register_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthPageType pageType = AuthPageType.login;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png",height: 200),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         AuthButton(
                             title: "ثبت نام",
                             onTap: () {
                               setState(() {
                                 pageType = AuthPageType.register;
                               });
                             },
                            isActive: pageType == AuthPageType.register,
                         ),
                         AuthButton(
                             title: "ورود",
                             onTap: () {
                               setState(() {
                                 pageType = AuthPageType.login;
                               });
                             },
                           isActive: pageType == AuthPageType.login,
                         ),
                       ],
                    ),
                    const SizedBox(height: 32),
                    AnimatedSwitcher(
                        duration: const Duration(milliseconds: 700),
                      child: pageType == AuthPageType.login? const LoginWidget() : const RegisterWidget(),
                    ),
                    AppButton(onTap: () {}, text: pageType == AuthPageType.login? "ورود به برنامه":"ثبت نام")
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}


enum AuthPageType {login,register}




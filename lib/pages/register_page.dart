import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page/widgets/text_field_widget.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/register.png"),
                  const SizedBox(height: 32.0),
                  const MyTextField(prefixIcon: Icons.person,hintText: "Username..."),
                  const SizedBox(height: 16.0),
                  const MyTextField(prefixIcon: Icons.password,hintText: "Password...",inputType: TextInputType.visiblePassword),
                  const SizedBox(height: 16.0),
                  const MyTextField(prefixIcon: Icons.phone_android_rounded,hintText: "Phone...",inputType: TextInputType.phone),
                  const SizedBox(height: 32.0),

                  ElevatedButton(
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(200,55)),
                        backgroundColor: MaterialStatePropertyAll(CupertinoColors.activeBlue)
                      ),
                      onPressed: () {},
                      child: const Text("Register",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),))
                ],
              ),
            )
          )
      ),
    );
  }
}






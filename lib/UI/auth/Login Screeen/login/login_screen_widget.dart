import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/UI/Components/custom_bottom.dart';
import 'package:task_management_app/UI/Components/custom_text_form_field.dart';
import 'package:task_management_app/UI/Home/home_screen.dart';
import 'package:task_management_app/Utils/email_validation.dart';

class LoginScreenWidget extends StatefulWidget {
  LoginScreenWidget({super.key});
  static const String routeName = 'Login-Screen-widget';

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/image/login.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Back',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '  Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 400,
                        ),
                        CustomTextFormField(
                          controller: emailController,
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter e-mail';
                            }
                            if (!isValidEmail(input)) {
                              return 'Email bad format';
                            }
                          },
                          labelText: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          controller: passwordController,
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter e-mail';
                            }
                          },
                          labelText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          isObscureText: true,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        CustomBottom(
                          bottomName: 'Log In',
                          onButtonClickedCallback: logIn,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  logIn() async{
    if (!(formKey.currentState!.validate())) {
      return;
    }
    try {
      UserCredential credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text
      );
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}

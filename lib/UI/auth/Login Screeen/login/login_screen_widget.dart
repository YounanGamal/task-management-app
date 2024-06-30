import 'package:flutter/material.dart';
import 'package:task_management_app/UI/Components/custom_bottom.dart';
import 'package:task_management_app/UI/Components/custom_text_form_field.dart';
import 'package:task_management_app/Utils/email_validation.dart';

class LoginScreenWidget extends StatelessWidget {
  LoginScreenWidget({super.key});
  static const String routeName = 'Login-Screen-widget';
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                          controller: emailcontroller,
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
                          controller: passwordcontroller,
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

  logIn() {
    if (!(formKey.currentState!.validate())) {
      return;
    }
  }
}

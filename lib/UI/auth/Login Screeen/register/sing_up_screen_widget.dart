import 'package:flutter/material.dart';
import 'package:task_management_app/UI/Components/custom_bottom.dart';
import 'package:task_management_app/UI/Components/custom_text_form_field.dart';
import 'package:task_management_app/Utils/email_validation.dart';

// ignore: must_be_immutable
class SingUpScreenWidget extends StatelessWidget {
  static const String routeName = 'Sing-Up';

  SingUpScreenWidget({super.key});
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmationPasswordController =
      TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/image/singup.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
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
                  '  Sing Up',
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
                          height: 140,
                        ),
                        CustomTextFormField(
                          controller: fullNameController,
                          labelText: 'Full Name',
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter full name ';
                            }
                            if (input.length <= 8) {
                              return 'Error, full name must be at least 8 chars';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormField(
                          controller: userNameController,
                          labelText: 'User Name',
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter user name ';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormField(
                          controller: emailController,
                          labelText: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter e-mail address';
                            }
                            if (!isValidEmail(input)) {
                              return 'E-mail bad format';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormField(
                          controller: passwordController,
                          labelText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          isObscureText: true,
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter e-mail address';
                            }
                            if (input.length <= 8) {
                              return 'Password must be at least 8 chars';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormField(
                          controller: confirmationPasswordController,
                          labelText: 'Password Confirmation',
                          keyboardType: TextInputType.visiblePassword,
                          isObscureText: true,
                          validator: (input) {
                            if (input == null || input.trim().isEmpty) {
                              return 'Please enter password confirmation';
                            }
                            if (input != passwordController.text) {
                              return 'Password not match';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomBottom
                          (
                          bottomName: 'Sing Up',
                          onButtonClickedCallback: singUp,
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

  void singUp() {
    if (!(formKey.currentState!.validate())) {
      return;
    }
  }
}

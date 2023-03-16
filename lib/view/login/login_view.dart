import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/components/round_button.dart';
import 'package:rest_api/utils/utils.dart';
import 'package:rest_api/view_model/services/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = Get.put(
    LoginViewModel(),
  );
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Login View'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: loginController.emailController.value,
                focusNode: loginController.emailFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar(context, 'Email', 'Enter Email');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                    context,
                    loginController.emailFocusNode.value,
                    loginController.passwordFocusNode.value,
                  );
                },
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: loginController.passwordController.value,
                focusNode: loginController.passwordFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar(context, 'Password', 'Enter Password');
                  }
                },
                // onFieldSubmitted: (value) {
                //   Utils.fieldFocusChange(
                //     context,
                //     loginController.emailFocusNode.value,
                //     loginController.passwordFocusNode.value,
                //   );
                // },
                decoration: const InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: 'Login',
                  onPress: () {
                    if (_formKey.currentState!.validate()) {}
                  })
            ],
          ),
        ),
      ),
    );
  }
}

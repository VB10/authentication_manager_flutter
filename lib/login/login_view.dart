import 'package:auth_manager_flutter/login/login_resources.dart';
import 'package:flutter/material.dart';
import './login_view_model.dart';

class LoginView extends LoginViewModel with LoginResources {
  final EdgeInsets paddingLow = EdgeInsets.all(8.0);

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingLow,
        child: Center(
          child: Form(key: formKey, autovalidateMode: AutovalidateMode.onUserInteraction, child: buildWrapFormBody()),
        ),
      ),
    );
  }

  Wrap buildWrapFormBody() {
    return Wrap(
      runSpacing: 10,
      alignment: WrapAlignment.end,
      children: [
        TextFormField(controller: controllerEmail, decoration: InputDecoration(labelText: emailText, border: OutlineInputBorder())),
        TextFormField(controller: controllerPassword, decoration: InputDecoration(labelText: paswordText, border: OutlineInputBorder())),
        FloatingActionButton(
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              fetchUserLogin(controllerEmail.text, controllerPassword.text);
            }
          },
          child: Icon(Icons.check),
        ),
      ],
    );
  }
}

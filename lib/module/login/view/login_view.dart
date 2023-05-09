import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        key: const Key("email"),
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        suffixIcon: Icons.email,
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                      QTextField(
                        key: const Key("password"),
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        suffixIcon: Icons.password,
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doLogin(),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Google Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () => controller.doGoogleLogin(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}

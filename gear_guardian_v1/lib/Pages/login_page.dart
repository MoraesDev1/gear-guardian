import 'package:flutter/material.dart';
import 'package:gear_guardian_v1/Pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final String _defaultUsername = 'admin';
  final String _defaultPassword = 'admin';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 177, 6),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 250,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: 'Usuário', prefixIcon: Icon(Icons.person)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o usuário';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Senha', prefixIcon: Icon(Icons.lock)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a senha';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (_usernameController.text == _defaultUsername &&
                              _passwordController.text == _defaultPassword) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          } else {
                            // Login failed
                          }
                        }
                      },
                      color: Colors.blue,
                      child: const Text('Entrar'),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: const Text('Criar cadastro'),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => PrivacyPolicyPage(),
                        //   ),
                        // );
                      },
                      textColor: Colors.black,
                      child: const Text('Políticas de Privacidade'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

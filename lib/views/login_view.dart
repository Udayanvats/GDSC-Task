// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:gdsc/constants/routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPasswordHidden = true;
  late final TextEditingController _email;

  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      // appBar: AppBar(title: const Text('Login')),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const SafeArea(
              child: Text('Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: Colors.black,
                  ))),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email)),
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.text,
                controller: _email,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: isPasswordHidden,
                enableSuggestions: false,
                autocorrect: false,
                controller: _password,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.security),
                  suffixIcon: InkWell(
                    onTap: togglePassword,
                    child: Icon(
                      isPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextButton(
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email, password: password);
                      final user = FirebaseAuth.instance.currentUser;
                      if (user?.emailVerified ?? false) {
                        // ignore
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            newRoute, (route) => false);
                      } else {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            verifyRoute, (route) => false);
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        await showErrorDialog(context, 'User Not found');
                      } else if (e.code == 'wrong-password') {
                        await showErrorDialog(context, 'Wrong Password');
                      }
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Haven't Registered Yet?"),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(registerRoute, (route) => false);
              },
              child: const Center(child: Text("Register Here"))),
        ],
      ),
    );
  }

  void togglePassword() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }
}

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: const Text('Error:'),
            content: Text(text),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Okay')),
            ]);
      });
}

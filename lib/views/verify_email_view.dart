import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text("\t\t\t\t\tVerification Email Sent",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text("Haven't Received The Email Yet?",
                  style: TextStyle(fontSize: 20)),
            ),
          ),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text("Resend Verification Mail"),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  // ignore: use_build_context_synchronously
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(registerRoute, (route) => false);
                },
                child: const Text(("Signout"),
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}

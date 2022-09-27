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
      appBar: AppBar(title: const Text('VerifyEmail')),
      body: Column(
        children: [
          const Text("Verification Email Sent"),
          const Text("Haven't Received The Email Yet?"),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text("Resend Verification Mail"),
          ),
          TextButton(onPressed: ()async{
           await FirebaseAuth.instance.signOut();
           // ignore: use_build_context_synchronously
           Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false);
          }, child:const Text( "Signout"))
        ],
      ),
    );
  }
}

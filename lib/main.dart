// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/constants/routes.dart';
import 'package:gdsc/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gdsc/views/colors.dart';
import 'package:gdsc/views/login_view.dart';
import 'package:gdsc/views/new_view.dart';
import 'package:gdsc/views/register_view.dart';
import 'package:gdsc/views/verify_email_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSI',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,

      //   primarySwatch: Colors.red,
      home: const Homepage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        newRoute: (context) => const NewView(),
        verifyRoute: (context) => const VerifyEmailView(),
      },
    ),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart, color: Colors.white, size: 45),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/swap.png'),
                color: tPrimaryColor,
                size: 50,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/wallet.png',
                ),
                size: 40,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
        ),
        // bottomNavigationBar:
        //     BottomNavigationBar(items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(icon: Icon(Icons.android)),
        //   BottomNavigationBarItem(icon: Icon(Icons.android)),
        //   BottomNavigationBarItem(icon: Icon(Icons.android))
        // ]),
        body: SingleChildScrollView(
          child: SafeArea(
            maintainBottomViewPadding: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  'assets/Binance.png',
                  height: 95,
                  width: 95,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Welcome To Binance",
                    style: TextStyle(fontSize: 27),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            foregroundColor: tSecondaryColor,
                            backgroundColor: tSecondaryColor,
                            side: BorderSide(color: tSecondaryColor),
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                foregroundColor: tWhiteColor,
                                backgroundColor: tPrimaryColor,
                                side: BorderSide(color: tSecondaryColor),
                                padding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: Text('LOGIN'))),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Text(
                                'Watchlist',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: tPrimaryColor,
                                  decorationThickness: 2,
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(width: 37),
                              Text(
                                'Coin',
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 160,
                            width: 250,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: tSecondaryColor,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                Row(children: [
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Bitcoin ",
                                        style: TextStyle(
                                            color: Colors.grey.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "BTC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  )
                                ]),
                                SizedBox(height: 20),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("\$18,931.72",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      " -1.03%",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Image.asset(
                                      'assets/Tick.png',
                                      width: 30,
                                      height: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 160,
                            width: 250,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: tSecondaryColor,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                Row(children: [
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Etherium ",
                                        style: TextStyle(
                                            color: Colors.grey.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "ETH",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  )
                                ]),
                                SizedBox(height: 20),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("\$1,345",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      " -0.29%",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Image.asset(
                                      'assets/Tick.png',
                                      width: 30,
                                      height: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ));
  }
  // return FutureBuilder(
  //     future: Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform,
  //     ),
  //     builder: (context, snapshot) {
  //       switch (snapshot.connectionState) {
  //         case ConnectionState.done:
  //           final user = FirebaseAuth.instance.currentUser;
  //           if (user != null) {
  //             if (user.emailVerified) {
  //               print("Email is Verified");
  //             } else {
  //               return const VerifyEmailView();
  //             }
  //           } else {
  //             return const LoginView();
  //           }
  //           return const LoginView();
  //         default:
  //           return const LinearProgressIndicator();
  //       }
  //     });
}

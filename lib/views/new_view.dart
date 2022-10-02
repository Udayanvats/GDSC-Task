// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewView extends StatelessWidget {
  const NewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      // appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 70),
                // ignore: prefer_const_constructors
                SafeArea(
                    // ignore: prefer_const_constructors
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'Welcome to Binance !',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Watchlist',
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(height: 40),
                        // ignore: avoid_unnecessary_containers
                        Container(
                            width: 400,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Bitcoin ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                          Text("BTC",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 20),
                                        ],
                                      )
                                    ]),
                                SizedBox(height: 20),
                                Text(
                                  "\$18931.72",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  "-1.03%",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                              ],
                            )),
                        SizedBox(height: 20),
                        Container(
                            width: 400,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[100],
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.black)),

                            // ignore: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("DogeCoin ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                          Text("DC",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 20),
                                        ],
                                      )
                                    ]),
                                SizedBox(height: 20),
                                Text(
                                  "\$267.50",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  "+1.43%",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                              ],
                            )),
                        SizedBox(height: 20),
                        Container(
                            width: 400,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[100],
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.black)),

                            // ignore: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("BNB ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                          Text("BNB",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 20),
                                        ],
                                      )
                                    ]),
                                SizedBox(height: 20),
                                Text(
                                  "\$189.72",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  "+0.03%",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                              ],
                            )),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ))
              ]),
        ),
      ),
    );
  }
}

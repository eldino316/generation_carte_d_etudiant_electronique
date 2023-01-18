// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Color.fromARGB(255, 228, 251, 202),
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 1.0,
                      child: Image.asset('assets/images/logoENI.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Anarana feno"),
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Daty naterahana"),
                            prefixIcon: Icon(Icons.calendar_month_rounded),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

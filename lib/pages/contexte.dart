// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hoaviko/pages/login.dart';
import 'package:hoaviko/pages/sigin.dart';

class contexte extends StatefulWidget {
  const contexte({Key? key}) : super(key: key);

  @override
  _contexteState createState() => _contexteState();
}

class _contexteState extends State<contexte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.7,
                child:
                    Image.asset('assets/images/back1.jpg', fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: Color.fromARGB(255, 228, 251, 202),
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 1.0,
                          child: Image.asset('assets/images/logoENI.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Tongasoa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 82, 59, 1),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Natokana ho an'ny mpianatra ato @ ENI\nirery ihany",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 82, 59, 1), fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: Color.fromARGB(255, 125, 71, 0),
                        fixedSize: Size.fromWidth(400),
                        padding: EdgeInsets.all(10),
                      ),
                      child: Text(
                        "HIDITRA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: Color.fromARGB(255, 255, 219, 172),
                        fixedSize: Size.fromWidth(400),
                        padding: EdgeInsets.all(10),
                      ),
                      child: Text(
                        "HISORATRA",
                        style: TextStyle(
                            color: Color.fromARGB(255, 79, 43, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

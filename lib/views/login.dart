import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Image.asset(
                  'assets/dec-mitra.png',
                  width: 250,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/logo-ikp-new.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      blurRadius: 5,
                    )
                  ]),
              child: Column(
                children: [
                  TextField(
                    // controller: email,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        labelText: 'Email'),
                  ),
                  Divider(),
                  TextField(
                    // controller: password,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_open_rounded,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        labelText: 'Password'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.scale,
                        dialogType: DialogType.warning,
                        title: 'Fitur in development',
                        btnOkOnPress: () {
                          // Navigator.pop(context);
                        },
                      ).show();
                    },
                    child: Text('Login')))
          ],
        ),
      )),
    );
  }
}

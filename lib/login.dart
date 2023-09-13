// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:latihandicoding/dasbord.dart';
import 'package:latihandicoding/themes.dart';

class MyLogin extends StatelessWidget {
  String? user;
  String? password;

  MyLogin({Key? key}) : super(key: key);

  void doLogin(BuildContext context) async {
    if ((user == 'admin' && password == '123')) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dasbord()),
      );
    } else {
      await showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Info'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Password atau username salah'),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Ok"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/gambar/Logo.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 39.0,
                ),
                Text(
                  "Super Money",
                  style: bold39.copyWith(color: primary),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: "User Name : admin",
                  ),
                  onChanged: (value) {
                    user = value;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 20,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.password,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: 'Enter your password: 123',
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 72,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      doLogin(context);
                    },
                    child: const Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

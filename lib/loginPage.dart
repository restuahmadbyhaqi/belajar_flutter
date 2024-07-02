import 'package:flutter/material.dart';
import 'package:belajar_flutter/sreens/home.dart';
import 'package:belajar_flutter/sreens/register.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: Icon(Icons.home),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/gambar-logo.png"),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username tidak boleh kosong';
                  }
                  return null;
                },
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisPage()),
                      );
                    },
                    child: Text('Register'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _login(context);
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> _login(BuildContext context) async {
  //   final response = await http.post(
  //     Uri.parse('https://fakestoreapi.com/auth/login'),
  //     body: {
  //       'username': _usernameController.text,
  //       'password': _passwordController.text,
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final data = json.decode(response.body);

  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => Homepage()),
  //     );
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Login failed: Server error'),
  //       ),
  //     );
  //   }
  // }
}

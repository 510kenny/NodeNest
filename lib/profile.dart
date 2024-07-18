import 'package:flutter/material.dart';
import 'package:final_project/base.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmemailController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _newusernameController = TextEditingController();
  @override
  void dispose() {
    _usernameController.dispose();
    _newusernameController.dispose();
    _confirmpasswordController.dispose();
    _confirmemailController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  void _signin() {
    if (_formKey.currentState!.validate()) {
      // Display a success message with custom color
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'You Signed Up!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 237, 6, 6),
        ),
      );
    }
  }
  void _login() {
    if (_formKey.currentState!.validate()) {
      // Display a success message with custom color
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'You logged in!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 84, 0, 219),
        ),
      );
    }
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 174, 239, 0.499),
      appBar: AppBar(
        title: Text('Change your info!'),
        backgroundColor: Color.fromARGB(197, 99, 158, 203),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'current username',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _newusernameController,
                decoration: InputDecoration(
                  labelText: 'new username',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'current email',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _confirmemailController,
                decoration: InputDecoration(
                  labelText: 'New Email',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                obscureText: false,
                validator: (value){
                  if (value == null || value.isEmpty)
                    return 'Empty';
                  if(value != _confirmemailController.text)
                    return 'Not Match';
                  return null;
                  }
              ),
              SizedBox(height: 20),TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'current Password',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
                SizedBox(height: 20),TextFormField(
                controller: _confirmpasswordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                obscureText: true,
                validator: (value){
                  if (value == null || value.isEmpty)
                    return 'Empty';
                  if(value != _passwordController.text)
                    return 'Not Match';
                  return null;
                  }
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => basehomepage()),
                  );
                }
                ,child: Text('Change!')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
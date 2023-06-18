import 'package:flutter/material.dart';
import 'Widget/Footer.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9BF4E),
        title: Center(child: Text('Login')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFFAD68B),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFFAD68B),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF9BF4E),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to the SignupScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF9BF4E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AppFooter(),
        ],
      ),
    );
  }
}

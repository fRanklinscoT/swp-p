import 'package:flutter/material.dart';
import 'package:influencer_connect_v1/Login/signIn.dart';

class SignUpScreenState extends StatelessWidget {
  SignUpScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[500],
        body: Center(
          child: Container(
            height: 500,
            width: 750,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.deepPurple[100], // Blue color
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.5,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter your username',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        FractionallySizedBox(
                          widthFactor: 0.5,
                          child: PasswordField(
                            labelText: 'Enter your password',
                          ),
                        ),
                        SizedBox(height: 20),
                        FractionallySizedBox(
                          widthFactor: 0.5,
                          child: PasswordField(
                            labelText: 'Confirm your password',
                          ),
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple[800],
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              // Submit to database
                            },
                            child: Text('Signup'),
                          ),

                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreenState()),
                            );

                          },
                          child: Text(
                            'Already a member?',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.asset(
                        'assets/signup.png',
                        height: 200,
                      ),
                    ),
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

class PasswordField extends StatefulWidget {
  final String labelText;

  const PasswordField({Key? key, required this.labelText}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: widget.labelText,
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ${widget.labelText.toLowerCase()}';
        }
        return null;
      },
    );
  }
}

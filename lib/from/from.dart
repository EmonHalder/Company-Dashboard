import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '', email = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 30,
                        offset: const Offset(0, 20),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildTextField(
                          label: 'Full Name',
                          icon: Icons.person_outline,
                          onSaved: (val) => name = val!,
                          validator: (val) =>
                              val!.isEmpty ? 'Enter your name' : null,
                        ),
                        const SizedBox(height: 16),
                        buildTextField(
                          label: 'Email',
                          icon: Icons.email_outlined,
                          onSaved: (val) => email = val!,
                          validator: (val) =>
                              !val!.contains('@') ? 'Invalid email' : null,
                        ),
                        const SizedBox(height: 16),
                        buildTextField(
                          label: 'Password',
                          icon: Icons.lock_outline,
                          obscureText: true,
                          onSaved: (val) => password = val!,
                          validator: (val) =>
                              val!.length < 6 ? 'Minimum 6 characters' : null,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 55),
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xFF2575FC),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Welcome, $name! 🎉'),
                                  backgroundColor: Color(0xFF2575FC),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
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

  Widget buildTextField({
    required String label,
    required IconData icon,
    required FormFieldSetter<String> onSaved,
    required FormFieldValidator<String> validator,
    bool obscureText = false,
  }) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscureText,
      validator: validator,
      onSaved: onSaved,
    );
  }
}

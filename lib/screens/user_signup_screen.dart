import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:app/screens/signup_screen.dart';
// import 'package:app/provider/email_provider.dart';

class UserSignUpPage extends StatelessWidget {
  const  UserSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final emailProvider = Provider.of<EmailProvider>(context,listen:false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Sign Up'),
      ),
      body: 
       const  SignUpForm(),);
  }
}
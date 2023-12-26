
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:app/screens/signup_screen.dart';
// import 'package:app/provider/email_provider.dart';


class BusinessSignUpPage extends StatelessWidget {
  const  BusinessSignUpPage({super.key});
      //  final emailProvider = Provider.of<EmailProvider>(context,listen:false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Sign Up'),
      ),
      body:  const SignUpForm(),
    );
  }
}
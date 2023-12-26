

import 'package:flutter/material.dart';
// // import 'package:app/provider/email_provider.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

    // final Function(String) onSignUp;
    
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(top: 25,left: 20,bottom:105,right: 20),
        padding: const EdgeInsets.only(left: 30,right: 30,top: 80),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1.5),
          borderRadius: BorderRadius.circular(12),
          gradient:  LinearGradient(colors: [
            Colors.green.withOpacity(0.3), Colors.red.withOpacity(0.3),Colors.white.withOpacity(0.3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),

        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome !',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 3,),
            const Text('Enter valid email/password',style: TextStyle(fontSize: 10),),

            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                // filled: true,
                hintText: 'Enter valid email.'
                ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Include char & num'
                ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement your sign-up logic here
                // You may want to validate user input and call an authentication service
                // For now, let's just print the entered email and password
                print('Email: ${_emailController.text}');
                print('Password: ${_passwordController.text}');

                // final String signUpEmail = _emailController.text;
                // widget.onSignUp(signUpEmail);
              },
              child: const Text('Sign Up',style: TextStyle(color: Colors.black,),),
            ),
          ],
        ),
      
    );
  }
}




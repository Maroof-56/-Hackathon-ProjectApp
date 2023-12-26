// selection_screen.dart

import 'package:flutter/material.dart';
import 'user_signup_screen.dart';
import 'business_signup_screen.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Account Type'),
      ),
      body: Container(
        width: double.infinity,
        margin: const  EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 100),
         decoration:  BoxDecoration(
         borderRadius: BorderRadius.circular(12),
         border: Border.all(color: Colors.black,width: 1.2),
          gradient: RadialGradient(
            colors: [
              Colors.black.withOpacity(0.5),Colors.blue.withOpacity(0.2),
            ],
            
            ),
           ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Choose your account type to sign up. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30,),
             SizedBox(
              width: 150,
               child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const UserSignUpPage()),
                    );
               
                  },
                  child: const Center(child:  Text('User',style: TextStyle(color: Colors.black,),)),
                ),
             ),
            
            const SizedBox(height: 16.0),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BusinessSignUpPage()),
                  );
                },
                child:const Center(child: Text('Business',style: TextStyle(color: Colors.black),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

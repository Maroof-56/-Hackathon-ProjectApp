// import 'package:app/screens/login_screen.dart';
import 'package:app/provider/email_provider.dart';
import 'package:app/screens/main_screen.dart';
// import 'package:app/widgets/touristspot_map.dart';
// import 'package:app/widgets/recomend_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:app/main_screen.dart';


void main(){
  runApp( 
    ChangeNotifierProvider(
      create: (context) => EmailProvider(),
   child: const App(),
      )
    );
}



class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          // body:Login(),
          // body:PlacesMap(),
          body:MainScreen(),
          // body:RecomendContainer(),
          // body:Categories(),
        ) ,
    );
  }
}
// 
  import 'package:app/data/dummy_data.dart';
import 'package:app/screens/next_screen.dart';
import 'package:app/screens/wallet_screen.dart';
import 'package:app/widgets/drawer.dart';
import 'package:app/widgets/recomend_container.dart';
import 'package:app/maps/touristspot_map.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/categories.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
 
    void _selectScreen(){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const NextScreen(),
        ),);
    }

    void _selectWallet(){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Wallet(),
         )
         );
    }
   late AnimationController _controllerLeft;
  late AnimationController _controllerRight;
  late Animation<double> _animationLeft;
  late Animation<double> _animationRight;

  @override
  void initState() {
    super.initState();

    // Set up animation controller
    _controllerLeft = AnimationController(
      vsync: this,
      duration: const Duration(seconds:20 ),
      );
    _controllerRight = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
      );
    

    // Set up animation
    _animationLeft = Tween<double>(
      begin: -1.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controllerLeft,
       curve: Curves.bounceInOut,
    ),
    );
    _animationRight = Tween<double>(
      begin: 1.0,
      end: -1.0,
    ).animate(CurvedAnimation(
      parent: _controllerRight,
       curve: Curves.easeInOut,
    ),
    );
    
           // i coment below code to animate text infintiy times
    // _controllerLeft.addStatusListener((status) {
    //   if(status == AnimationStatus.completed){
    //     _controllerLeft.reverse();
    //   }
    //   else if(status == AnimationStatus.completed){
    //       _controllerLeft.forward();
    //   }
    // });

    // _controllerRight.addStatusListener((status) {
    //   if(status == AnimationStatus.completed){
    //     _controllerRight.reverse();
    //   }
    //   else if(status == AnimationStatus.completed){
    //       _controllerRight.forward();
    //   }
    // });
    // _controllerLeft.forward();
    // _controllerRight.forward();

    _controllerLeft.repeat(reverse: true);
    _controllerRight.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controllerLeft.dispose();
    _controllerRight.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'YATRA',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            color: Color.fromARGB(232, 139, 69, 19),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white24,
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(8),
          child: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.person_2_rounded, size: 30, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.info_outlined, size: 30, color: Colors.black),
              onPressed: () {
                _selectWallet();
              },
            ),
          ),
        ],
      ),
      drawer:const  MainDrawer(),
        body: SingleChildScrollView(
       child:Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 30,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '  Search Destination',
                hintMaxLines: 2,
                hintStyle: const TextStyle(
                   color: Color.fromARGB(232, 139, 69, 19),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 15, top: 7),
                  child: Icon(Icons.search, size: 30, color: Color.fromARGB(232, 139, 69, 19),),
                ),
                suffixIcon: const Icon(Icons.more_horiz, size: 30, color: Color.fromARGB(232, 139, 69, 19),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Animated text
          AnimatedBuilder(
            animation: _animationLeft,
            builder: (context, child) {
              return Transform.translate(
                // offset: Offset(200 * _animation.value, 0),
                offset: Offset(MediaQuery.of(context).size.width*_animationLeft.value,0),
                child:const Padding(
                  padding:  EdgeInsets.only(top: 20),
                  child: Text(
                    ' Tech Travellers Welcomes You ',
                    style:  TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      // backgroundColor: Color.fromARGB(149, 255, 235, 59),
                      decoration: TextDecoration.overline,
                      color:Color.fromARGB(232, 139, 69, 19),
                      decorationColor: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _animationRight,
             builder: (context,child){
              return Transform.translate(
                offset:Offset(MediaQuery.of(context).size.width * _animationRight.value,0)
                 );
             },
             ),
             const SizedBox(height: 20,),
             ElevatedButton(onPressed: (){
                // _selectScreen();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const  PlacesMap(),
                   ));
             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor:  const Color.fromARGB(150, 139, 69, 19),
              // Color.fromARGB(232, 139, 69, 19)
              foregroundColor: Colors.white,
              side:const BorderSide(color:Colors.black,width: 1.5),
              elevation: 2,
              shadowColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
             ),
             child: const Text(
              'Explore',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
             ),
            // Container(
            //   margin: const EdgeInsets.all(10),
            //   height: 150,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.black,width: 1.5),
            //     borderRadius: BorderRadius.circular(4),

            //     ),
            //   child: const PlacesMap(),
            // ),
            
             
           const SizedBox(height: 15),
           Padding(
            padding:const  EdgeInsets.only(left: 20),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [  Text('Recommended \n places',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ) ,
              ),]
            ),
          ),
          const SizedBox(height: 6,),
           const RecomendContainer(recomendList :recomendData,), // Recomend 
           const SizedBox(height: 30),
           const  Categories(),
          const SizedBox(height: 20,),
           
        ],
      ),
    ),
    );
  }
}
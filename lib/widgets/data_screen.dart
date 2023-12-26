import 'package:app/models/data.dart';
import 'package:flutter/material.dart';
import 'package:app/models/category.dart';

class DataScreen extends StatelessWidget {
   const DataScreen({super.key, required this.category, required this.data});
   final Category category;
   final  List<Data> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title) ,
      ),

      
      body: SingleChildScrollView(
      child:Column(
        children: [
          const SizedBox(height: 25,),
           Center(
            child: Text(
              // data.heading,
              data.isNotEmpty ? data[0].heading : 'No Heading Available',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
              ),
            ),
           ),
           const SizedBox(height: 20,),
           Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            decoration:  const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(77, 241, 91, 91),
                  blurRadius: 40,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 2,

                ),
              ],
              gradient:  LinearGradient(
                colors: [
                  Color.fromARGB(255, 248, 178, 72),
                    Color.fromARGB(250, 255, 255, 255),
                    Colors.green,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                 )
              ),
              child: Text(
                  // data.contentData,
                  data.isNotEmpty ? data[0].contentData : 'No content',
                  style: const TextStyle(
                    fontFamily: 'silkscreen-Bold',
                    
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  overflow: TextOverflow.visible,
              ),
              
           )
        ],
      ),
    ),
    );
  }
}
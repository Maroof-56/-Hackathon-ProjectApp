// import 'package:app/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:app/models/recomend.dart';

class RecomendContainer extends StatefulWidget {
  const RecomendContainer({super.key,required this.recomendList});
   
   final List<Recomend> recomendList;
  @override
  State<RecomendContainer> createState() => _RecomendContainerState();
}

class _RecomendContainerState extends State<RecomendContainer> {
  @override
  Widget build(BuildContext context) {
    return       Container(   // 1st container for whole
            padding: const EdgeInsets.only(left: 10,right: 10),
            height: 100,
            child: ListView.separated(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context,index){
                return const SizedBox(width: 10,);
              },
              itemBuilder: (context,index){
                final Recomend recomend = widget.recomendList[index];  // new things answer below 

                return Container(  // 2nd for individual making with help of separated
                  width: 130,
                  decoration:   BoxDecoration(
                    color:const  Color.fromARGB(143, 139, 69, 19),
                    border: Border.all(color: Colors.black,width: 1),
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: const [
                      BoxShadow(
                       blurRadius: 20,
                       color: Colors.white,
                       spreadRadius: 1,
                       blurStyle: BlurStyle.outer,
                      )
                    ]
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Container(
                        padding:const  EdgeInsets.only(top: 1),
                        width: 50,
                        height: 50,
                        decoration:const  BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: (){},
                             icon:recomend.icon,
                          ),
                       ),
                       const SizedBox(height: 4,),
                          Text(
                          recomend.title,
                         ),
                    ]),
                );
              }
              ),

           );
  }
}


// The use of widget here is essential because it distinguishes between the properties of the widget class and local variables within the state class.
// Since the state class is associated with a specific instance of the widget, widget helps you reference the properties of that specific widget.


// Now, recomend is a local variable within the scope of the itemBuilder function, and you can use it to access properties like icon and title from the Recomend class.

// Regarding your question about why we use this inside the itemBuilder function, it's because the itemBuilder function is called for each item in the list when building the ListView. The ListView.builder or ListView.separated widgets efficiently create items on demand as you scroll. So, inside the itemBuilder, you handle each item individually based on its index in the list.
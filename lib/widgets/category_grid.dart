
import 'package:flutter/material.dart';
import 'package:app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category,required this.onselectCategory});
  final Category category;
 
  final void Function() onselectCategory;
   
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onselectCategory,
      splashColor: Theme.of(context).primaryColorDark,
     borderRadius: BorderRadius.circular(20), // Remove the extra comma here

      child:
       Container(
        height:100,
        margin: const EdgeInsets.only(left: 8, right: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black,width: 1),
          // shape: BoxShape.circle,
          boxShadow:  [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 30,
              spreadRadius: 2,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child:Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const Icon(Icons.category,),
             Icon(category.icon,),  
            const SizedBox(width: 10),
            Text(
              category.title,
              style: const TextStyle(
                fontFamily: 'Dhurjati',
                fontSize: 15,
                //  color: Color.fromARGB(190, 139, 69, 19),
                 color:  Color.fromARGB(243, 139, 69, 19),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

//  The Icon widget itself doesn't store the visual representation of the icon; it's just a widget that displays an icon based on a provided IconData.
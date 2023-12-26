import 'package:app/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/data_screen.dart';
// import 'package:flutter/material.dart';
import 'package:app/models/category.dart';
import 'package:app/widgets/category_grid.dart';
class Categories extends StatelessWidget {
  const Categories({super.key});
   
    void _selectCategory(BuildContext context,Category category){
      
      final filterData = mainData.where((data) =>  data.categories.contains(category.id)).toList();

      Navigator.of(context).push(MaterialPageRoute(
         builder: (contex) => DataScreen(category: category, data: filterData)
            ),
         );
    }

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
        height:180,
     child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10,

          ),
          children: [
            for(final category in availableCategory)
            CategoryGridItem(category: category,
             onselectCategory:(){
              _selectCategory(context, category);
             },
            )
          ],
          ),
    );
      
    
  }
}




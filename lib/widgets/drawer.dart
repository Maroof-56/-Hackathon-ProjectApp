import 'package:app/screens/selection_screen.dart';
// import 'package:app/screens/signUp_screen.dart';
import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
   
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
         
      // backgroundColor: Colors.black,
      child:
      Column(
        // padding: const EdgeInsets.all(1),
        children: [
          DrawerHeader(
            decoration:
                BoxDecoration(color:Theme.of(context).colorScheme.primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SelectionScreen(),
                            ),);
                          }, 
                          icon: const Icon(
                            Icons.person_add_alt_rounded,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SignIn/Register',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inverseSurface,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                Text(
                  'for User/Business',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onInverseSurface,
                      ),
                ),
              ],
            ),
          ),
           ListTile(
            leading: const Icon(Icons.person,size:25,color: Colors.black,),
            title: Text(
              'Your Ticket/Passes',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
              
              ),
              onTap: (){
                Navigator.pop(context);
              },
          ),
          ListTile(
            leading:const Icon(Icons.account_balance_wallet,size: 25,color: Colors.black,),
          
            title: Text(
              ' Yatra Wallet',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:const Icon(Icons.view_comfortable_outlined,size: 25,color: Colors.black,),
          
            title: Text(
              ' Your VR',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:const Icon(Icons.payment_sharp,size: 25,color: Colors.black,),
          
            title: Text(
              ' Card Recharges',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
    
  }
}

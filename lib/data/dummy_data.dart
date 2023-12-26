import 'package:app/models/recomend.dart';
import 'package:flutter/material.dart';
import 'package:app/models/category.dart';
import 'package:app/models/data.dart';
   const availableCategory = [
    Category(
      id: 'c1',
      icon: Icons.wallet_membership,
       title: 'Wallet',
       color: Color.fromARGB(232, 139, 69, 19),
       ),
    Category(
      id: 'c2',
      icon: Icons.movie_filter_outlined,
       title: 'VR',
       color: Color.fromARGB(232, 139, 69, 19),
       ),
    Category(
      id: 'c3',
      // icon: Icon(Icons.card_travel,size:25),
      icon: Icons.help_outline,
       title: 'Create Card',
        color: Color.fromARGB(232, 139, 69, 19),
       ),
    Category(
      id: 'c4',
      icon: Icons.check_outlined,
       title: 'Check Balance',
        color: Color.fromARGB(232, 139, 69, 19),
       ),
];

const mainData = [
  Data(
    heading: 'Experience Virtual Reality', 
    categories: ['c2'],
    contentData: 
    '''Virtual Reality (VR) in tourism is a technology that leverages immersive and interactive experiences to enhance the way people explore and experience travel destinations. It provides users with a simulated environment that can replicate or create entirely new places and scenarios. Here are some key aspects of virtual reality in tourism:

 Virtual Tours:
 VR enables users to take virtual tours of destinations before physically visiting them. This allows travelers to explore hotels, landmarks, and attractions in a more immersive way, helping them make more informed decisions.

 Immersive Experiences:
 VR provides a heightened sense of presence by immersing users in a 360-degree environment. This level of immersion allows users to feel like they are actually present in the destination, experiencing its sights and sounds.
 Destination Marketing
 Tourism boards and travel agencies use VR to create compelling marketing campaigns. Virtual reality experiences can showcase the beauty and uniqueness of a destination, attracting potential travelers and generating interest in specific locations.

 Training and Education:
 VR is used for training tourism professionals, such as travel agents, by simulating realistic scenarios. It helps them better understand destinations, accommodations, and cultural aspects, improving their ability to assist clients.

 Cultural and Historical Preservation:
 VR is utilized to digitally preserve cultural and historical sites. Users can explore ancient ruins, historical landmarks, and museums virtually, contributing to the preservation of these sites and their stories.

 Enhanced Booking Processes:
 Virtual reality can be integrated into online travel platforms, allowing users to virtually experience accommodations, cruise ships, and other travel options before making reservations. This can lead to more informed booking decisions.

 Accessibility:
 VR offers an accessible way for people with physical limitations to experience travel. Those who may not be able to travel in person can still explore destinations virtually, promoting inclusivity in the tourism industry.

 Event Experiences:
 VR is used to broadcast and experience events virtually, such as concerts, festivals, and conferences. This opens up new possibilities for remote participation in events that may be geographically challenging for some individuals.

 Collaboration and Partnerships:
 Tourism businesses and organizations can collaborate with VR developers to create custom experiences. For example, hotels and resorts may offer virtual previews to travel agencies or partner with VR content creators to enhance their marketing strategies.

 Future Trends:
 As VR technology advances, the integration of augmented reality (AR) and mixed reality (MR) in tourism is expected to grow. These technologies can provide even more interactive and personalized experiences for travelers.
        
    ''',
     color: Color.fromARGB(232, 139, 69, 19), 
    ),
];



const recomendData = [
     Recomend(
      icon: Icon(Icons.person),
      title: 'Mumbai', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.phone),
      title: 'Chennai', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.travel_explore),
      title: 'Delhi', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.person),
      title: 'item-1', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.person),
      title: 'item-1', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.person),
      title: 'item-1', 
      color: Colors.white,
      ),
     Recomend(
      icon: Icon(Icons.person),
      title: 'item-1', 
      color: Colors.white,
      ),
     
];
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, dynamic>> post = [
    {
      "profile": "assets/person2.jpg",
      "name": "Amelia Nelson",
      "detail": "Actress",
      "product": "assets/product1.jpg"
    },
    {
      "profile": "assets/person4.jpg",
      "name": "John Dee",
      "detail": "Actor",
      "product": "assets/product1.jpg"
    },
    {
      "profile": "assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Samantha Martin",
      "detail": "Actress",
      "product": "assets/product1.jpg"
    },
    {
      "profile": "assets/person4.jpg",
      "name": "Jack Martin",
      "detail": "Actor",
      "product": "assets/product1.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Stack(
           children: [
             Container(
               decoration: const BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/orange1.jpeg"),
                   fit: BoxFit.cover,
                 ),
               ),
               height: 250,
               width: MediaQuery.of(context).size.width,
               child: const Padding(
                 padding: EdgeInsets.all(25.0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "KETY",
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20),
                     ),
                     Spacer(),
                     Icon(
                       Icons.search,
                       color: Colors.white,
                     ),
                     SizedBox(
                       width: 20,
                     ),
                     Icon(
                       Icons.shopping_cart_outlined,
                       color: Colors.white,
                     ),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:200.0),
               child: Container(
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30)),
                 width: MediaQuery.of(context).size.width,
                 // height: 100,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                     child: Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const SizedBox(
                             height: 30,
                           ),
                           const Text(
                             "Featured Product",
                             style: TextStyle(
                                 fontSize: 20, fontWeight: FontWeight.bold),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           Container(
                             height: 280,
                             child: ListView.separated(
                               scrollDirection: Axis.horizontal,
                               itemCount: post.length,
                               separatorBuilder: (context, index) =>
                                   const SizedBox(
                                 width: 10,
                               ),
                               itemBuilder: (context, index) {
                                 return Container(
                                   decoration: BoxDecoration(
                                       color: const Color.fromARGB(
                                           255, 244, 235, 235),
                                       borderRadius: BorderRadius.circular(30)),
                                   width: 200,
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Row(
                                           children: [
                                             CircleAvatar(
                                               backgroundImage: AssetImage(
                                                   post[index]['profile']),
                                             ),
                                             const SizedBox(
                                               width: 10,
                                             ),
                                             Column(
                                               crossAxisAlignment:
                                                   CrossAxisAlignment.start,
                                               children: [
                                                 Text(
                                                   post[index]['name'],
                                                   style: const TextStyle(
                                                       fontWeight:
                                                           FontWeight.bold),
                                                 ),
                                                 Text(
                                                   post[index]['detail'],
                                                   style: const TextStyle(
                                                       fontSize: 10),
                                                 )
                                               ],
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Image(
                                           image:
                                               AssetImage(post[index]['product']),
                                           fit: BoxFit.fill,
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               },
                             ),
                           ),
                           const SizedBox(
                             height: 20,
                           ),
                           const Text("Popular Products",
                               style: TextStyle(
                                   fontSize: 20, fontWeight: FontWeight.bold)),
                           const SizedBox(
                             height: 20,
                           ),
                           Container(
                             height: 280,
                             child: ListView.separated(
                               scrollDirection: Axis.horizontal,
                               itemCount: post.length,
                               separatorBuilder: (context, index) =>
                                   const SizedBox(
                                 width: 10,
                               ),
                               itemBuilder: (context, index) {
                                 return Container(
                                   decoration: BoxDecoration(
                                       color: const Color.fromARGB(
                                           255, 244, 235, 235),
                                       borderRadius: BorderRadius.circular(30)),
                                   width: 200,
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Row(
                                           children: [
                                             CircleAvatar(
                                               backgroundImage: AssetImage(
                                                   post[index]['profile']),
                                             ),
                                             const SizedBox(
                                               width: 10,
                                             ),
                                             Column(
                                               crossAxisAlignment:
                                                   CrossAxisAlignment.start,
                                               children: [
                                                 Text(
                                                   post[index]['name'],
                                                   style: const TextStyle(
                                                       fontWeight:
                                                           FontWeight.bold),
                                                 ),
                                                 Text(
                                                   post[index]['detail'],
                                                   style: const TextStyle(
                                                       fontSize: 10),
                                                 )
                                               ],
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Image(
                                           image:
                                               AssetImage(post[index]['product']),
                                           fit: BoxFit.fill,
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               },
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
       ),
     
    );
  }
}
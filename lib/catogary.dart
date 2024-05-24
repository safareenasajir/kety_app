import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Catogary extends StatefulWidget {
  const Catogary({super.key});

  @override
  State<Catogary> createState() => _CatogaryState();
}

class _CatogaryState extends State<Catogary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 248, 229, 200)),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/person2.jpg"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Amalia Nelson",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "1 hours ago",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 170, 168, 168)),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage("assets/product1.jpg"),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 248, 229, 200),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage("assets/person4.jpg"),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "John Deo",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "2 hours ago",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 170, 168, 168)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                      "Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: ")
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 229, 200),
                              borderRadius: BorderRadius.circular(30)
                            ),
                             height: 280,
                            width: MediaQuery.of(context).size.width,
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                         CircleAvatar(
                                              backgroundImage:
                                                  AssetImage("assets/person2.jpg"),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Samantha Martin",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "2 hours ago",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 170, 168, 168)),
                                                )
                                              ],
                                            )
                                    
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 180,
                                        width: 200,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(27),image: DecorationImage(image: AssetImage("assets/product1.jpg"),fit: BoxFit.cover)),
                      
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 90,
                                              width: 110,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(27),image: DecorationImage(image: AssetImage("assets/product1.jpg"),fit: BoxFit.cover)),
                                        
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                              height: 90,
                                              width: 110,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(27),image: DecorationImage(image: AssetImage("assets/product1.jpg"),fit: BoxFit.cover)),
                                        
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List types=[
    'NORMAL','OILY','DRY','COMBY'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Catagories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(255, 238, 221, 195)),
                                        child: const Icon(Icons.card_giftcard,color: Colors.pink,size: 50,),
                                  ),
                                  Text("GIFT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(255, 238, 221, 195)),
                                        child: const Icon(Icons.fireplace_rounded,color: Colors.orange,size: 50,),
                                  ),
                                  Text("HOT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(255, 238, 221, 195)),
                                        child: const Icon(Icons.favorite,color: Colors.pink,size: 50,),
                                  ),
                                  Text("LOVED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(255, 238, 221, 195)),
                                        child: const Icon(Icons.abc,color: Colors.pink,size: 50,),
                                  ),
                                  Text("SECRETS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 241, 228, 232)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Skin Types",style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),),
                                  SizedBox(height: 10,),

                                  
                                  SizedBox(
                                  height: 100,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                    return  Column(
                                      children: [
                                        Container(
                                        height: 70,
                                         width: 70,
                                         decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color.fromARGB(255, 238, 221, 195)),
                                          child: const Icon(Icons.girl,color: Colors.white,size: 50,),
                                        ),
                                        Text(types[index],style: TextStyle(fontSize: 12),)

                                      ],
                                    );
                                  },),
                                  ),
                                  
                                  
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                ),
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

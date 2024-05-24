import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  

  const CustomCard({super.key,required this.img,required this.name,required this.detail,required this.product});
final String img;
final String name;
final String detail;
final String product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
                          decoration: BoxDecoration(color: Color.fromARGB(255, 213, 207, 207),borderRadius: BorderRadius.circular(30)),
                          width: 50,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(backgroundImage: AssetImage(img),),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text(detail,style: TextStyle(fontSize: 10),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Image(image: AssetImage(product),fit: BoxFit.cover,)

                            ],
                          ),
                        )
    );
  }
}
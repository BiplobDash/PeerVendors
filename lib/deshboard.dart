

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeshboarScreen extends StatelessWidget {

  alerDialogue(context){
    showDialog(context: context, builder: (_){
      return AlertDialog(
            title: Text('Help & Support'),
            content: Container(
              height: 150,
              width: 100,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.red,),
                      TextButton(onPressed: (){},
                          child: Text('Fix My Location Problem',style: TextStyle(
                            color: Colors.red,
                          ),))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.red,),
                      TextButton(onPressed: (){},
                          child: Text('How to use this app',style: TextStyle(
                            color: Colors.red,
                          ),))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.red,),
                      TextButton(onPressed: (){},
                          child: Text('Contact us for Location',style: TextStyle(
                            color: Colors.red,
                          ),))
                    ],
                  ),
                ],
              ),
            ),
      );
    });
  }

  TextEditingController _searchController = TextEditingController();

  List<String> categories = [
    'Cars, Bikes, Bicycles',
    'Electronics & Appliances',
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red,),
                  Text('Gazipur,  Dhaka', style: TextStyle(
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Icon(Icons.question_mark_outlined, color: Colors.red,),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: SizedBox(
                    width: 320,
                    child: TextFormField(
                      controller: _searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: 'Search Product',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey,
                            ),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:25, top: 15),
                  child: Container(
                    height: 35,
                    child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 8,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Divider(),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 300,

                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/img_8.png', width: 100, height: 100,),
                          Divider(),
                          Text('No Products available in your area.', style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: SizedBox(
                              width: 250,
                              child: ElevatedButton(onPressed: (){
                                Navigator.pushReplacement(context,
                                    CupertinoPageRoute(builder: (_)=> DeshboarScreen()));
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Text('Search in nearby', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15
                                    ),),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: SizedBox(
                              width: 250,
                              child: ElevatedButton(onPressed: (){
                                Navigator.pushReplacement(context,
                                    CupertinoPageRoute(builder: (_)=> DeshboarScreen()));
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Text('Put Up something for Sale', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15
                                    ),),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: FloatingActionButton(onPressed: (){
                    alerDialogue(context);
                  },
                    backgroundColor: Colors.grey,
                    child: Icon(
                    Icons.headphones,
                      color: Colors.red,
                  ),),
                ),

              ],
            ),
          ),
        ),
    );
  }
}

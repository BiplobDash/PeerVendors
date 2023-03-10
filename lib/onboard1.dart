import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:project4/authenticationScreen.dart';

class OnBoardOne extends StatefulWidget {
  @override
  State<OnBoardOne> createState() => _OnBoardOneState();
}

class _OnBoardOneState extends State<OnBoardOne> {
  List _items = [
    {
      'images': 'assets/images/img_1.png',
      'title': 'Welcome To Peer Vendor',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '
    },
    {
      'images': 'assets/images/img_2.png',
      'title': 'Find Your Favourite Products',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque.  '
    },
    {
      'images': 'assets/images/img_3.png',
      'title': 'Buy & Sell Around You',
      'description':
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque.  '
    },
    {
      'images': 'assets/images/img_4.png',
      'title': 'Safe & Trusted',
      'description':
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque.  '
    },
  ];

  int _currentIndex = 0;
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(_items[_currentIndex]['images'], width: 373,height: 301,),
            Divider(),
            new DotsIndicator(
              dotsCount: 4,
              position: _value,
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(_items[_currentIndex]['title'],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Text(_items[_currentIndex]['description'], style: TextStyle(
                color: Colors.black38,
                fontSize: 15
              ),),
            ),
            SizedBox(height: 144,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               _currentIndex==3?SizedBox() :TextButton(onPressed: (){
                  if(_currentIndex < 3){
                    setState(() {
                      _currentIndex += 1;
                      _value += 1;
                    });
                  }
                },
                    child: Text('Skip', style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),)),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  ),
                  child: TextButton(onPressed: (){
                    if(_currentIndex < 3){
                      setState(() {
                        _currentIndex += 1;
                        _value += 1;
                      });
                    }
                    else{
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=> AuthenticationScreen()));
                    }
                  }, child: Text('Next',style: TextStyle(
                    color: Colors.black
                  ),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

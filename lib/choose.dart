import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project4/onboard1.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    int _radioGroupValue = 1;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              'assets/images/img.png',
              width: 40,
              height: 40,
            ),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose Your language',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _radioGroupValue,
                          onChanged: (value) {
                            setState(() {
                              _radioGroupValue = value!;
                            });

                          }),
                      VerticalDivider(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => OnBoardOne()));
                      }, child: Text(
                        'English',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))

                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _radioGroupValue,
                          onChanged: (value) {
                            setState(() {
                              _radioGroupValue = value!;
                            });
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (_) => OnBoardOne()));
                          }),
                      VerticalDivider(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => OnBoardOne()));
                      }, child: Text(
                        'Kiswahili',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: _radioGroupValue,
                          onChanged: (value) {
                            setState(() {
                              _radioGroupValue = value!;
                            });
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (_) => OnBoardOne()));
                          }),
                      VerticalDivider(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => OnBoardOne()));
                      }, child: Text(
                        'Francais',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

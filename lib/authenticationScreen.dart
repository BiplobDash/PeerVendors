import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth/sign_up.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/img.png',
              width: 70,
              height: 70,
            ),
            Text(
              'Let’s Get Started.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'If you continue, you are accepting \nOur Terms & Conditions and.',
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            TextButton(onPressed: () {}, child: Text('Privacy Policy')),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_) => SignUp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_) => SignUp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
            ),
            Divider(),
            Center(
              child: Column(
                children: [
                  Text(
                    'OR Continue With',
                    style: TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.w600),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/img_5.png',
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/img_6.png',
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/img_7.png',
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Need Help?',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

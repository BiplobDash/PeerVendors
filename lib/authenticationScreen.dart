import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth/sign_up.dart';
import 'bottomNav.dart';

class AuthenticationScreen extends StatelessWidget {

  signInWithGoogle(context) async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      var user = userCredential.user;

      if (user!.uid.isNotEmpty) {
        print('success');
        print(user.displayName);
        print(user.email);
        print(user.uid);
        print(user.phoneNumber);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNav()));
      }
    } catch (e) {
      print('failed');
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

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
                              onPressed: () => signInWithGoogle(context),
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
                              onPressed: () {
                                signInWithFacebook();
                              },
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

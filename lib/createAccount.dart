import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Text(
                    'Create an Account Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Enter your details to continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    'Email Adress',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      )),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _passController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 193),
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                        ),
                      )),
                ),
                SizedBox(
                    width: 300,
                    height: 60,

                    child:
                    ElevatedButton(

                        onPressed: () {

                        }
                        ,style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ), child: Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                      ),))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

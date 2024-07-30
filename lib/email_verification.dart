import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'user_profile.dart';

class LoginScreen extends StatelessWidget {

   TextEditingController emailController =  TextEditingController();
   TextEditingController passwordController =  TextEditingController();

   final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();
   final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signUpWithEmail(String email, String password,BuildContext context) async {
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      if(user != null){
        _saveData(context);
        // Fluttertoast.showToast(msg: "user created");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "$e");
    }
  }

   void _saveData(BuildContext context) {

     _databaseReference.child('user').push().set({
       'email': emailController.text,
     }).then((_) {
       Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfileScreen(),),);
       Fluttertoast.showToast(msg: 'stored');
     }).catchError((error) {
       Fluttertoast.showToast(msg: '$error');
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.grey[800],
          iconSize: 20,
          onPressed: () {},
        ),
        title: Text('Login', style: TextStyle(
          fontSize: 18
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Log in to your account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Handle forgot password action
              },
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                signUpWithEmail(emailController.text, passwordController.text, context);
                // Handle login action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[600],
                minimumSize: Size(double.infinity, 50), // Adjust the button size
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

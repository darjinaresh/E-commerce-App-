// import 'package:flutter/material.dart';
// import 'otp.dart';
// import 'email_verification.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class LoginSignupScreen extends StatelessWidget {
//   final TextEditingController phoneController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               // color: Colors.orange,
//               color: Colors.white70,
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: 24.0),
//               child: Column(
//                 children: [
//                   // SizedBox(height:0),
//                   Image.asset('assets/images/9616904.jpg'), // Add your image here
//                   // Text(
//                   //   'Naresh',
//                   //   style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
//                   // ),
//                   // Text(
//                   //   'Darji',
//                   //   style: TextStyle(color: Colors.white, fontSize: 16),
//                   // ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(11.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Join us now to a be part of Naveli Family',
//                     style: TextStyle(fontSize: 16,  color: Colors.grey),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     keyboardType: TextInputType.phone,
//                     // controller: TextEditingController(text: '+91'),
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.all(0),
//                       prefixIcon: Icon(Icons.phone),
//                       hintText: 'Enter Mobile Number',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: ()  {
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),),);
//                     },
//                     child: Text('CONTINUE'),
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(double.infinity, 45),
//                       backgroundColor: Colors.teal[750],
//                       foregroundColor: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 40),
//                   Text('OR', style: TextStyle(
//                       fontSize: 13, color: Colors.grey
//                   ),),
//                   SizedBox(height: 40),
//                   OutlinedButton.icon(
//                     icon: Icon(Icons.email),
//                     label: Text('CONTINUE WITH EMAIL', style: TextStyle(
//                         fontSize: 12
//                     ),),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),),);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(double.infinity, 45),
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.grey[600],
//                       side: BorderSide(color: Colors.grey),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       OutlinedButton.icon(
//                         icon: Icon(Icons.account_circle, color: Colors.red,),
//                         label: Text('GOOGLE', style: TextStyle(
//                             fontSize: 12
//                         ),),
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.grey[600],
//                           minimumSize: Size(170, 45),
//                           side: BorderSide(color: Colors.grey)
//                         ),
//                       ),
//                       SizedBox(width: 5),
//                       OutlinedButton.icon(
//                         icon: Icon(Icons.facebook, color: Colors.blue[900],),
//                         label: Text('FACEBOOK', style: TextStyle(
//                           fontSize: 12
//                         ),),
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.grey[600],
//                           minimumSize: Size(170, 45),
//                           side: BorderSide(color: Colors.grey)
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'WELCOME TO NAVELI TAILOR',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 12, color: Colors.grey[500]),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'otp.dart';
import 'email_verification.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home_screen.dart';
import 'user_profile.dart';


class LoginSignupScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  Future<User?> _signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final FirebaseAuth auth = FirebaseAuth.instance;

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      return null; // The user canceled the sign-in
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final UserCredential userCredential = await auth.signInWithCredential(credential);
    return userCredential.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white70,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: [
                  Image.asset('assets/images/9616904.jpg'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(11.0),
              child: Column(
                children: [
                  Text(
                    'Join us now to a be part of Naveli Family',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Enter Mobile Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _sendOtp(context),
                    child: Text('CONTINUE'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      backgroundColor: Colors.teal[750],
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text('OR', style: TextStyle(fontSize: 13, color: Colors.grey)),
                  SizedBox(height: 40),
                  OutlinedButton.icon(
                    icon: Icon(Icons.email),
                    label: Text('CONTINUE WITH EMAIL', style: TextStyle(fontSize: 12)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey[600],
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton.icon(
                        icon: Icon(Icons.account_circle, color: Colors.red),
                        label: Text('GOOGLE', style: TextStyle(fontSize: 12)),
                        onPressed: () async {
                          User? user = await _signInWithGoogle();
                          if (user != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey[600],
                          minimumSize: Size(170, 45),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 5),
                      OutlinedButton.icon(
                        icon: Icon(Icons.facebook, color: Colors.blue[900]),
                        label: Text('FACEBOOK', style: TextStyle(fontSize: 12)),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey[600],
                          minimumSize: Size(170, 45),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'WELCOME TO NAVELI TAILOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendOtp(BuildContext context) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    String phoneNumber = phoneController.text.trim();

    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto-resolving the SMS code
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        // Handle error
        print('Verification failed: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(verificationId: verificationId),
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'user_profile.dart';
// import 'dart:convert';
//
// class OtpScreen extends StatefulWidget {
//   @override
//   _OtpScreenState createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   TextEditingController _otpController = TextEditingController();
//   int _resendOtpTimer = 30; // initial timer value
//   Timer? _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _startResendOtpTimer();
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   void _startResendOtpTimer() {
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         if (_resendOtpTimer > 0) {
//           _resendOtpTimer--;
//         } else {
//           timer.cancel();
//         }
//       });
//     });
//   }
//
//   void _resendOtp() async {
//     setState(() {
//       _resendOtpTimer = 30; // reset timer
//       _startResendOtpTimer();
//     });
//   }
//
//   void _submitOtp() {}
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//           iconSize: 20,
//           onPressed: () {},
//         ),
//         title: Text(
//           'Login',
//           style: TextStyle(fontSize: 17, color: Colors.grey[800]),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               'Verify with OTP',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 30),
//             // Text('Sent to', style: TextStyle(color: Colors.grey),),
//             SizedBox(height: 16),
//             TextField(
//               controller: _otpController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Enter OTP',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),
//             if (_resendOtpTimer > 0)
//               Text(
//                 'RESEND OTP in 00:${_resendOtpTimer.toString().padLeft(2, '0')}s',
//                 style: TextStyle(color: Colors.grey[800]),
//               )
//             else
//               TextButton(
//                 onPressed: _resendOtp,
//                 child: Text(
//                   'RESEND OTP',
//                 ),
//               ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProfileScreen(),
//                   ),
//                 );
//                 // Add your OTP submission logic here
//                 print('OTP Submitted: ${_otpController.text}');
//               },
//               child: Center(
//                 child: Text('SUBMIT OTP'),
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
import 'dart:async';
import 'user_profile.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;

  OtpScreen({required this.verificationId});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController = TextEditingController();
  int _resendOtpTimer = 30; // initial timer value
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startResendOtpTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startResendOtpTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_resendOtpTimer > 0) {
          _resendOtpTimer--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  void _resendOtp() async {
    setState(() {
      _resendOtpTimer = 30; // reset timer
      _startResendOtpTimer();
    });
  }

  void _submitOtp() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    String smsCode = _otpController.text.trim();

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,
      smsCode: smsCode,
    );

    try {
      await auth.signInWithCredential(credential);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    } catch (e) {
      print('Failed to sign in: ${e.toString()}');
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Login',
          style: TextStyle(fontSize: 17, color: Colors.grey[800]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Verify with OTP',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter OTP',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            if (_resendOtpTimer > 0)
              Text(
                'RESEND OTP in 00:${_resendOtpTimer.toString().padLeft(2, '0')}s',
                style: TextStyle(color: Colors.grey[800]),
              )
            else
              TextButton(
                onPressed: _resendOtp,
                child: Text('RESEND OTP'),
              ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _submitOtp,
              child: Center(
                child: Text('SUBMIT OTP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

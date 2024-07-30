// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
//
// class EditProfileScreen extends StatefulWidget {
//   @override
//   _EditProfileScreenState createState() => _EditProfileScreenState();
// }
//
// class _EditProfileScreenState extends State<EditProfileScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _birthdateController = TextEditingController();
//   String _gender = 'Male';
//
//
//   @override
//   void dispose(){
//     _birthdateController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _selectDate(BuildContext context) async {
//     DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null) {
//       setState(() {
//         _birthdateController.text = DateFormat('dd-MM-yyyy').format(picked);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation:0,
//         title: Text('EDIT PROFILE', style: TextStyle(
//           fontSize: 15
//         ),),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//               onPressed : (){},
//           iconSize: 20,
//         ),
//       ),
//
//       body: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: ListView(
//               children: [
//                 SizedBox(height: 5.0),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'First Name',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your first name';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 30.0),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Last Name',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0)
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your last name';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 30.0),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your email';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 30.0),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Mobile No.',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     prefixText: '+91 ',
//                     prefixStyle: TextStyle(color: Colors.black),
//                   ),
//                   enabled: true,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your mobile number';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 30.0),
//                 TextFormField(
//                   controller: _birthdateController,
//                   decoration: InputDecoration(
//                     labelText: 'Birthdate',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4)
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your birthdate';
//                     }
//                     return null;
//                   },
//                   readOnly: true,
//                   onTap: (){
//                     _selectDate(context);
//                   },
//                 ),
//                 SizedBox(height: 30.0),
//
//                 InputDecorator(
//                   decoration: InputDecoration(
//                     labelText: 'Gender',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Radio<String>(
//                             value: 'Female',
//                             groupValue: _gender,
//                             onChanged: (String? value) {
//                               setState(() {
//                                 _gender = value!;
//                               });
//                             },
//                           ),
//                           Text('Female'),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Radio<String>(
//                             value: 'Male',
//                             groupValue: _gender,
//                             onChanged: (String? value) {
//                               setState(() {
//                                 _gender = value!;
//                               });
//                             },
//                           ),
//                           Text('Male'),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Radio<String>(
//                             value: 'Other',
//                             groupValue: _gender,
//                             onChanged: (String? value) {
//                               setState(() {
//                                 _gender = value!;
//                               });
//                             },
//                           ),
//                           Text('Other'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 32.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Process data
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                   ),
//
//                     child: Text(
//                       'SAVE CHANGES',
//                       style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.normal),
//                     ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:naveli/user_profile.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _birthdateController = TextEditingController();
  String _gender = 'Male';

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobilenomController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();

  final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> _saveData(BuildContext context) async {
    _databaseReference.child('users').push().set({
      'firstname': firstnameController.text,
      'lastname': lastnameController.text,
      'email': emailController.text,
      'mobilenom': mobilenomController.text,
      'birthdate': _birthdateController.text,
      'gender': _gender,
    }).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
      Fluttertoast.showToast(msg: 'Profile updated successfully');
    }).catchError((error) {
      Fluttertoast.showToast(msg: 'Failed to update profile: $error');
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _birthdateController.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'EDIT PROFILE',
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 20,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(height: 5.0),
                TextFormField(
                  controller: firstnameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  controller: lastnameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  controller: mobilenomController,
                  decoration: InputDecoration(
                    labelText: 'Mobile No.',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    prefixText: '+91 ',
                    prefixStyle: TextStyle(color: Colors.black),
                  ),
                  enabled: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  controller: _birthdateController,
                  decoration: InputDecoration(
                    labelText: 'Birthdate',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your birthdate';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () {
                    _selectDate(context);
                  },
                ),
                SizedBox(height: 30.0),
                InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Female',
                            groupValue: _gender,
                            onChanged: (String? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          Text('Female'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Male',
                            groupValue: _gender,
                            onChanged: (String? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          Text('Male'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Other',
                            groupValue: _gender,
                            onChanged: (String? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          Text('Other'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _saveData(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    'SAVE CHANGES',
                    style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

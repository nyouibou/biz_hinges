import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../signupscreen/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController namectrlr = TextEditingController();
  TextEditingController phonectrlr = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100, left: 5),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Login to explore authentic ayurvedic medicines,',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'herbal remedies,and personalized wellness',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Solutions for a healthier, balanced life.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: namectrlr,
                        decoration: InputDecoration(
                          hintText: 'Shopname',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey),
                          prefixIcon: Icon(Icons.maps_home_work_sharp),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.length == 0) {
                            return "Name is empty";
                          }
                          if (value.contains("@")) {
                            return "it is not a valid name";
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: phonectrlr,
                        decoration: InputDecoration(
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey),
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Phone number cannot be empty";
                          }
                          if (!RegExp(r"^\d+$").hasMatch(value)) {
                            return "Phone number must contain only digits";
                          }
                          if (value.length != 10) {
                            return "Phone number must be 10 digits long";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  MyHomePage()),
                          // );
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //       content: Text('sign-in  successful!')),
                          // );
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Color(0xff6EBC31),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Text(
                          'Dont have an account ?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6EBC31),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Text(
                              'Join us',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6EBC31),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        )));
  }
}

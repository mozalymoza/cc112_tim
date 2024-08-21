import 'package:flutter/material.dart';
import 'dart:convert';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight * 0.16,
                    margin: EdgeInsets.only(bottom: screenHeight * 0.05),
                    decoration: const BoxDecoration(
                      color: Color(0xFF0075FF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x66000000),
                          offset: Offset(0, 7),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(35, 39, 27, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 29,
                            height: 0,
                          ),
                          Image.asset(
                            'images/logo.png',
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: (screenHeight * 0.16 - 30) / 2 + 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.02),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02, horizontal: screenWidth * 0.1),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.4,
                                    color: Color(0xFF1E1E1E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFD9D9D9)),
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFFB3B3B3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.4,
                                    color: Color(0xFF1E1E1E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFD9D9D9)),
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFFB3B3B3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          //onTap: _login, // Call the login function
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFF2C2C2C)),
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFF2C2C2C),
                            ),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFFF5F5F5),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            height: 1.8,
                            color: Color(0xFF1E1E1E),
                            decorationColor: Color(0xFF1E1E1E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

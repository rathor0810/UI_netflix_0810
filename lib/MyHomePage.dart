import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPasswordVisible = false;
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          '',
          style: TextStyle(
              fontSize: 34,
              color: Color.fromARGB(255, 244, 243, 243),
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Stack(
        children: [
          // Background Image
          const Image(
            image: AssetImage('assets/images/Netflix2.png'),
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    controller: emailText,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.email,
                        ),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.white30),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    obscureText: _isPasswordVisible,
                    
                    controller: passText,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off)),

                        // suffixIcon: const Icon(Icons.password),
                        // suffix: IconButton(onPressed: onPressed, icon: Icon(Icons.remove_red_eye)),
                        hintText: 'password',
                        hintStyle: const TextStyle(color: Colors.white30),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                  Container(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String uEmail = emailText.toString();
                      String uPass = passText.toString();
                      print('Email:$uEmail , Pass:$uPass ');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

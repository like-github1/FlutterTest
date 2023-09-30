import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginPage> {
  bool isEmailValid = false;
  // function that Check if the email matches the required pattern
  void validateEmail(String input) {
    bool isValid = RegExp(r'^.+@.+\..+$').hasMatch(input);
    setState(() {
      isEmailValid = isValid;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("GeeksforGeeks"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (value) {
                  validateEmail(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: isEmailValid ? () {} : null,
              // color: isEmailValid ? Colors.black : null,
              child: Text(
                isEmailValid ? 'Next' : 'Enter your Email adress',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 62),
                    child: Text('Find email '),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: const Text(
                          'Find password',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

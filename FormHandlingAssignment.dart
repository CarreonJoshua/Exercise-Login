import "package:flutter/material.dart";

void main() {
  runApp(StarterPage());
}

class StarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: First()
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.orange,
        leading: const Icon(Icons.code)
      ),
      body: Power(),
    );
  }
}

class Power extends StatefulWidget {
  const Power({super.key});
  @override
  Powerful createState() {
    return Powerful();
  }
}

class Powerful extends State<Power> {
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              onChanged: (value) {username = value;},
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email Address",
              ),
            ),
            TextFormField(
              onChanged: (value) {password = value;},
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                 print(username);
                 print(password);
                },
              child: const Text("Log In"),
            )
          ]
        )
      );
    }
  }

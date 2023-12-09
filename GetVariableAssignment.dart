import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatefulA(),
    );
  }
}

class StatefulA extends StatefulWidget {
  @override
  State<StatefulA> createState() {
    return FirstPage();
  }
}

class FirstPage extends State<StatefulA> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Screen One"),
        backgroundColor: Colors.red,
        leading: const Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children:  [
            TextFormField(
              onChanged: (value) {name = value;},
              decoration: const InputDecoration(
                labelText: "Name",
              )
            ),
            OutlinedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(biboo: name),
                  )
                 );
                },
              child: const Text("Move to Screen 2")
              )
            ], 
         ),
       )
     );
   }
 }

class SecondPage extends StatelessWidget {
  final String? biboo;
  const SecondPage({this.biboo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Screen Two"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text("Good to see you, $biboo!"),
          const Text("I hope to see you again in the future!")
        ]
      )
    );
  }
}

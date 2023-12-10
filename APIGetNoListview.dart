import "dart:convert";
import "dart:math";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatefulB(),
    );
  }
}

class StatefulB extends StatefulWidget {
  @override
  State<StatefulB> createState() {
    return Home();
  }
}

class Home extends State<StatefulB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Home"),
        backgroundColor: Colors.red,
        leading: const Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children:  [
            OutlinedButton(
             
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StatefulA(),
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

class StatefulA extends StatefulWidget {
  @override
  State<StatefulA> createState() {
    return FirstPage();
  }
}

class FirstPage extends State<StatefulA> {
  
  int ranYakumo = Random().nextInt(22);
  List<dynamic> posts = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22];
  
  @override
  void initState() {
    super.initState();
    
    getPosts();
  }
  
  getPosts() async {
    var url = Uri.parse("https://api.sampleapis.com/cartoons/cartoons2D");
    var response = await http.get(url);
    setState(() {
      posts = json.decode(response.body);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API assignment"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(posts[ranYakumo]["title"]),
      ),
    );
  }
 }

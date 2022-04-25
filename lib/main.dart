import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(leading: Icon(Icons.menu),
      centerTitle: true,
      primary: true,
      title: Text("second class"),
      actions: [Icon(Icons.search)],
      backgroundColor: Colors.green,
      shadowColor: Colors.red,
      elevation: 10,
      ),
      body: 
      
      // SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
        Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Container(
              width: 100,
              height: 100,
              child: Text("data"),
              decoration: BoxDecoration(
              // color: Colors.blue,

gradient: LinearGradient(colors: [
Colors.red,
Colors.blue,
Colors.purple,
Colors.yellow

])

              ),
        
            ), Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              // color: Colors.blue,

gradient: LinearGradient(colors: [
Colors.red,
Colors.blue,
Colors.purple,
Colors.yellow

])

              ),
              
            ), Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              // color: Colors.blue,

gradient: LinearGradient(colors: [
Colors.red,
Colors.blue,
Colors.purple,
Colors.yellow

])

              ),
              
            ), 
          ]),
        ),
      ),
 

    );
  }
}
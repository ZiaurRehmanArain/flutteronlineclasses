import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
   home: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.pinkAccent,
       leading:Icon(Icons.menu),
       actions: [Icon(Icons.search),SizedBox(width: 20,)],
       title: Center(
         child: Text("profile",style: TextStyle(
         fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600
     ),),
       ),
     ),
 backgroundColor: Color.fromARGB(255, 162, 212, 253),
     body: Column(
      //  crossAxisAlignment: CrossAxisAlignment.center,
      //  mainAxisAlignment: MainAxisAlignment.center,
       children: [
         
         Divider(color: Colors.transparent,),
    Container(
      child: CircleAvatar(backgroundImage: NetworkImage("data:image/png;base64,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"),
    radius: 60,
      ),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.all(Radius.circular(100))
     ,border: Border.all(width: 2,color: Colors.lightBlue)
      ),
    ),
    SizedBox(height: 20,),
    Text("sajjad android",style: TextStyle(fontSize:30,fontWeight: FontWeight.w600,color: Colors.grey),),
    Text("course",style: TextStyle(fontSize:30,fontWeight: FontWeight.w600, color: Colors.grey),),
SizedBox(height: 20,),
Container(
  decoration: BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.blue,
      blurRadius: 20,
      // spreadRadius: 30,
    )
  ],
  color: Colors.teal,
  
  ),
  width: 400,
  height: 40,
  // color: Colors.teal,
  // alignment: Alignment.center,
  child:Row(children: [
    SizedBox(width:110),
   Icon(Icons.whatsapp),
    SizedBox(width:40),
 Text("03459345798237592")
],) ,),SizedBox(height: 40,),
     ElevatedButton(onPressed: (){}, child: Text("sign in"))
     ],
     
     ),

   ),
    );
  }
}
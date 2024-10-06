import 'package:flutter/material.dart';

import 'package:flutter_application_3/basichom.dart';

import 'package:flutter_application_3/profile.dart';
import 'package:flutter_application_3/search.dart';

class homepage extends StatefulWidget {
  
  late String name='main'; 

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent ,
      appBar: AppBar(
        title:Text("homepage"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            TextButton(onPressed: () {}, 
            child: Text("data")
            )
          ],
        ),
      ),
      body:Center(
        child: Padding(
          padding:EdgeInsets.fromLTRB(50, 0, 30, 0),
          child: Text("This is homepageof my dream app",
          style: TextStyle(color:Colors.white,fontSize: 50 ),),

        
    ),
      ),
    bottomNavigationBar:BottomAppBar(
      child:Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
     child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Basichome()),);
              }, 
            icon: Icon(Icons.home_rounded)),
            Spacer(),
            IconButton(
              onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const search()),);
              }, 
            icon: Icon(Icons.search)),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const home()),);
              }, 
            icon: Icon(Icons.person)),
          ],
        ),
      ),
    ),
    );
  }
}
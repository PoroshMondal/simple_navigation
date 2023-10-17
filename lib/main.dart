import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Navigation"),
        titleSpacing: 1,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 1,
        actions: [
          IconButton(
              onPressed: (){
                mySnackBar(context, "Top Bar Message icon");
              },
              icon: Icon(Icons.message)
          ),
          IconButton(
              onPressed: (){
                mySnackBar(context, "Top Bar Share");
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));
                },
                child: Text("Go Activity 1")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
                },
                child: Text("Go Activity 2")
            ),
          ],
        )
      ),
    );
  }

}

class Activity1 extends StatelessWidget {
  const Activity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 1"),
      ),
      body: Center(
        child: Text("THis is Activity 1"),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  const Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 2"),
      ),
      body: Center(
        child: Text("THis is Activity 2"),
      ),
    );
  }
}

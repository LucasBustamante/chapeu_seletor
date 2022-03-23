import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.1,
          0.7,
        ],
        colors: [
          Color(0xff002e4a),
          Colors.black,
        ],
      )
      ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                  children: [
                    Container(
                      child: Image.asset(
                          'assets/hogwarts.png'),),
                    Container(child: Image.asset('assets/hagrid.png'),)]),
            )
          ],
        ),

      ),
    );
  }
}


import 'package:flutter/material.dart';

class CommomRoom extends StatefulWidget {
  const CommomRoom({Key? key}) : super(key: key);

  @override
  State<CommomRoom> createState() => _CommomRoomState();
}

class _CommomRoomState extends State<CommomRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('assets/mainhall.jpg'),),
    );
  }
}

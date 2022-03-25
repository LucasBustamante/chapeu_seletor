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
  int cont = 0;

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
          Color(0xff0a324b),
          Colors.black,
        ],
      )
      ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    cont ++;
                  });
                },
                child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                            'assets/hogwarts.jpg'),),
                        if (cont >= 1)
                          Image.asset('assets/fala$cont.png'),
                      if (cont == 3)
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainHall()),
                            );
                          },
                        )
                      ]),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

class MainHall extends StatefulWidget {
  const MainHall({Key? key}) : super(key: key);

  @override
  State<MainHall> createState() => _CommomRoomState();
}

class _CommomRoomState extends State<MainHall> {

  int cont = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          cont++;
        });
      },
      child: Scaffold(
        body: Center(child: Container(decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.7,
              ],
              colors: [
                Color(0xff658fe6),

                Colors.black
              ]
          )
        ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Stack(children: [
                  Image.asset('assets/mainhall.png'),

                  Image.asset('assets/fala$cont.png'),
                  if (cont >= 6 && cont <= 9)
                    Image.asset('assets/brazao$cont.png')
                  else
                    Image.asset('assets/chapeu.png'),
                ]),
            ],
          ),)),
      ),
    );
  }
}

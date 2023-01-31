

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<MyHomePage> {
  final _pageControl = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageControl,
      scrollDirection: Axis.horizontal,
      children: const [
        Welcome1()
      ],
    );
  }
}

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff131313),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        <Widget>[
          Image.asset('images/1.png',width: 400, height: 400,),
        ],
        ),
    ),
    );
  }
}

import 'dart:async';
import 'package:authentication/login.dart';
import 'package:flutter/material.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}
class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3,milliseconds: 600), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>task()));
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/gif1.gif"),
                fit: BoxFit.fill,
              )
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'ecom home.dart';
import 'ecom7.dart';


class ebot extends StatefulWidget {
  const ebot({super.key});

  @override
  State<ebot> createState() => _ebotState();
}

class _ebotState extends State<ebot> {
  int ind=0;

  final pages=[
    ecom(),
    ecom6(),
  ];

  void tap(index)
  {
    setState(() {
      ind=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[ind],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        currentIndex: ind,
        onTap: tap,
      ),
    );
  }
}

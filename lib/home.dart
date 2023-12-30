import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: Column(
            children: [
              Center(child: Text("Welcome",style: TextStyle(fontSize: 30),)),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushNamed(context, "/login");
    },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  child: Center(child: Text("Signout",style: TextStyle(color: Colors.white,fontSize: 17),)),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

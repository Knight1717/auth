import 'package:authentication/login.dart';
import 'package:flutter/material.dart';

import 'modelclass3.dart';


class ecom6 extends StatelessWidget {
  const ecom6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.cyanAccent,
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.notifications_none,size: 30,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.search,size: 30,),
                ),
              ],
            ),
          ],
          automaticallyImplyLeading: false,
        ),
      ),
      body: Container(
        height: 570,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyanAccent[100],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Text("Hello",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 50,
                      width:180,
                      child: ElevatedButton(onPressed: (){}, child: Text("Your Orders",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 50,
                      width:180,
                      child: ElevatedButton(onPressed: (){}, child: Text("Buy Again",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 50,
                      width:180,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>task()));
                      }, child: Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
                ),
              ],
            ),SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Orders",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bar1.length,
                itemBuilder: (BuildContext context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(bar1[index].image),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

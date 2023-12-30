import 'package:flutter/material.dart';
import 'ecom bottom.dart';


class ecom1 extends StatelessWidget {
  const ecom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 650,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  Text("Speak to Shop",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 30),),
                  Text('Just say "Alexa"',style: TextStyle(fontSize: 23,color: Colors.white),),
                  SizedBox(height: 30,),
                  Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('"Alexa, search for products"',style: TextStyle(fontSize: 20),)),
                  ),SizedBox(height: 20,),
                  Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('"Alexa, go to Amazon Coupons"',style: TextStyle(fontSize: 20),)),
                  ),SizedBox(height: 20,),
                  Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('"Alexa, where is my order?"',style: TextStyle(fontSize: 20),)),
                  ),
                ],
              ),
            ),
          ),SizedBox(height: 50,),
          Center(
              child: Container(
                height: 60,
                width: 200,

                child: ElevatedButton(onPressed: (){},child: Text("Continue",style: TextStyle(fontSize: 20),)),
              )),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ebot()));
          }, child: Text("Back",style: TextStyle(color: Colors.blue,fontSize: 20),))
        ],
      ),

    );
  }
}


import 'package:flutter/material.dart';

import 'ecom bottom.dart';

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.yellow,
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/apay5.png"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ebot()));
              },child: Icon(Icons.cancel,color: Colors.black,size: 30,)),
            )
          ],
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 8,),
                Container(
                  height: 100,
                  width: 184,
                  decoration: BoxDecoration(
                    //border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text("Amazon Pay Balance",style: TextStyle(fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            SizedBox(height: 69,),
                            Text("0.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),),
                            SizedBox(width: 120,),
                            Icon(Icons.arrow_forward_ios,size: 15,color: Colors.deepOrangeAccent,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),SizedBox(width: 9,),
                Container(
                  height: 100,
                  width: 184,
                  decoration: BoxDecoration(
                    //border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text("Amazon Pay Balance",style: TextStyle(fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            SizedBox(height: 69,),
                            Text("Get started",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.deepPurpleAccent),),
                            SizedBox(width: 76,),
                            Icon(Icons.arrow_forward_ios,size: 15,color: Colors.deepOrangeAccent,)
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),SizedBox(height: 20,),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                //border: Border.all(),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Quick Actions",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    ],
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/qr.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text("Scan QR"),
                          ],
                        ),
                      ),SizedBox(width: 40,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay10.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Insurance"),
                          ],
                        ),
                      ),SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay6.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Travel"),
                          ],
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay8.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Subscribe"),
                          ],
                        ),
                      ),SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay4.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Electricity"),
                          ],
                        ),
                      ),SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay11.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("recharge"),
                          ],
                        ),
                      )
                    ],
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 37,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay7.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Gift Cards"),
                          ],
                        ),
                      ),SizedBox(width: 40,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay12.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Gas"),
                          ],
                        ),
                      ),SizedBox(width: 40,),
                      Container(
                        height: 95,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/apay.png"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text("Shortcut"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
              ),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      //border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/upi.webp"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("Set up UPI and earn rewards  "),
                  Text("Add bank account",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/card.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all()
                ),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        //border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/crown1.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),SizedBox(width: 20,),
                    Text("Total Cashback Earned",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    SizedBox(width: 70,),
                    Text("₹0",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),)
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                //border: Border.all(),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Your Scratch Cards",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                            //border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/reward1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 183,),
                              Container(
                                height: 58,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                ),
                                child: Column(
                                  children: [
                                    Text("Expires on",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                    Text("12 Sep 11:59 PM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),SizedBox(width: 10,),
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                            //border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/reward1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 183,),
                              Container(
                                height: 58,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                ),
                                child: Column(
                                  children: [
                                    Text("Expires on",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                    Text("12 Sep 11:59 PM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text("View all",style: TextStyle(color: Colors.blue,fontSize: 16),),
                          SizedBox(width: 260,),
                          Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

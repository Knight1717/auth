import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ecom bottom.dart';
import 'ecom4.dart';
import 'modelclass2.dart';

class ecom5 extends StatefulWidget {
  const ecom5({super.key});

  @override
  State<ecom5> createState() => _ecom5State();
}

class _ecom5State extends State<ecom5> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ebot()));
        },child: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Container(
          height: 45,
          width: 350,
          decoration: BoxDecoration(
            //border: Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(

              border: OutlineInputBorder(),
              hintText: "Search",hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.search,color: Colors.black,),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ecom1()));
            },child: Icon(Icons.mic)),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 350,
                        aspectRatio: 20 / 9,
                        viewportFraction: 4,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 1,
                        //onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index,reason){
                          setState(() {
                            current= index;
                          });
                        }

                    ),
                    itemCount: bar.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        height:10,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(bar[itemIndex].image),
                                fit: BoxFit.fill)),
                      );
                    }
                ),
              ],
            ),
            new DotsIndicator(
              dotsCount: 6,
              position: current,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: Colors.blue,
              ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("visit the ASUS store",style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140.0),
                  child: RatingBarIndicator(
                    rating:4.4,
                    itemCount:5,
                    itemSize:20.0,
                    itemBuilder:(context,_) =>
                        Icon(
                          Icons.star,
                          color:Colors.red,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("ASUS ROG Zephyrus Duo 16 (2022) Dual Screen Laptop, 16 (40.64 cm) QHD+ 165Hz/3ms, AMD Ryzen 9 6900HX, 16GB RTX 3080 Ti, Gaming Laptop (32GB/2TB SSD/Win 11/with Office/Black/2.60 Kg) GX650RXZ-LO227WS",style: TextStyle(color: Colors.black87),),
            ),SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text("Amazon's ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                          ),
                          Text("Choice",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text("-20%",style: TextStyle(color: Colors.red,fontSize: 35),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text("₹",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        Text("4,29,990",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text("M.R.P: ",style: TextStyle(color: Colors.grey),),
                      Text("₹4,79,900",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "EMI ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
                    TextSpan(text: "from ₹40,660. No Cost EMI available. ",style: TextStyle(color: Colors.black,),),
                    TextSpan(text: "EMI options ",style: TextStyle(color: Colors.blue,),),
                    TextSpan(text: "Inclusive of all taxes.",style: TextStyle(color: Colors.black,),),
                  ]
              )),
            ),
            Text("Pay with Amazon Pay UPI",style: TextStyle(color: Colors.blue),),
            Text("Get upto ₹50 back. Setup now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800),),

            SizedBox(height: 10,),
            Divider(
              height: 4,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange,color: Colors.orange,),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Exchange Your Old Product",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17),),
                        Text("Save upto ₹11,200",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Icon(Icons.arrow_drop_down_outlined),
            ),
            SizedBox(height: 10,),
            Divider(
              height: 4,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.miscellaneous_services,color: Colors.orange,),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add Laptop Set-up Service",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        Text("Expert service at your doorstep",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Icon(Icons.arrow_drop_down_outlined),
            ),
            SizedBox(height: 10,),
            Divider(
              height: 4,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined,color: Colors.orange,),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Extended Warranty",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        Text("Extra Protection against device failure",style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Icon(Icons.arrow_drop_down_outlined),
            ),
            SizedBox(height: 10,),
            Divider(
              height: 4,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Total: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17),),
                  Text("₹4,29,990",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "FREE scheduled delivery as soon as ",style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Friday, 25 August, ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
                    TextSpan(text: "Order within ",style: TextStyle(color: Colors.black)),
                    TextSpan(text: "40 mins.",style: TextStyle(color: Colors.green)),
                  ]
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Deliver to Krishna - Coimbatore 641035",style: TextStyle(color: Colors.blue),),
                ],
              ),
            ),SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Only 2 left in stock",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("Qty"),
                  Container(
                    alignment: Alignment.topLeft,
                    child: DropdownButton<String>(
                      items: <String>[
                        '1',
                        '2',
                        '3',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 350,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
              ),child: Text("Add to Cart"),),
            ),SizedBox(height: 10,),
            Container(
              height: 40,
              width: 350,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),child: Text("By Now"),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Add to wishlist",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Product Highlights",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18),),
                ),
              ],
            ),SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/rog1.webp"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/rog.gif"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/rog2.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/rog4.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/rog3.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),


    );
  }
}

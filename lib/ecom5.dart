import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ecom bottom.dart';
import 'ecom4.dart';

class ecom2 extends StatefulWidget {
  const ecom2({super.key});

  @override
  State<ecom2> createState() => _ecom2State();
}

class _ecom2State extends State<ecom2> {
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 260,
                        aspectRatio: 20 / 9,
                        viewportFraction: 4,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                    itemCount: 5,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        height:10,
                        width: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/tv2.jpeg"),
                                fit: BoxFit.fill)),
                      );
                    }
                ),
                Positioned(
                    bottom: 210,
                    right: 30,
                    child: Icon(Icons.share)),
                Positioned(
                    bottom: 10,
                    left: 30,
                    child: Icon(Icons.favorite_border)),
                Positioned(
                  bottom: 200,
                  right: 330,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Center(child: Text("18% offer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                    ),
                  ),),
              ],
            ),
            new DotsIndicator(
              dotsCount: 6,
              position: current,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: Colors.blue,
              ),
            ),SizedBox(height: 8,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("visit the sony store",style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: RatingBarIndicator(
                    rating:3.4,
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
              child: Text("Sony Bravia 164 cm (65 inches) XR Series 4K Ultra HD Smart Full Array LED Google TV XR-65X90L (Black)",style: TextStyle(color: Colors.black87),),
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
                  Text("-50%",style: TextStyle(color: Colors.red,fontSize: 35),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child:

                    Row(
                      children: [
                        Text("₹",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        Text("1,24,990",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w600),),
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
                      Text("M.R.P: ",style: TextStyle(color: Colors.grey,),),
                      Text("₹2,49,900",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
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
                    TextSpan(text: "from ₹6,001. No Cost EMI available. ",style: TextStyle(color: Colors.black,),),
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
                        Text("Save upto ₹2,650",style: TextStyle(color: Colors.grey,fontSize: 15),),
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
              leading: Icon(Icons.verified_outlined,color: Colors.green,),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Installation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        Text("Added",style: TextStyle(color: Colors.grey,fontSize: 15),),
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
                  Text("₹1,24,990",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "FREE scheduled delivery as soon as ",style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Thursday, 31 August, ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
                    TextSpan(text: "Order within ",style: TextStyle(color: Colors.black)),
                    TextSpan(text: "21 hrs 24 mins.",style: TextStyle(color: Colors.green)),
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
                  child: Text("In stock",style: TextStyle(color: Colors.green,fontSize: 20),),
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
                        '4',
                        '5',
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
                    image: AssetImage("assets/sony.jpg"),
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
                    image: AssetImage("assets/sony1.jpg"),
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
                    image: AssetImage("assets/sony2.png"),
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
                    image: AssetImage("assets/sony3.jpg"),
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
                    image: AssetImage("assets/sony4.jpg"),
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
                    image: AssetImage("assets/sony5.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}

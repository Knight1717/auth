import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'apay.dart';
import 'ecom povo.dart';
import 'ecom4.dart';
import 'ecom5.dart';
import 'ecom6.dart';
import 'elens.dart';
import 'modelclass.dart';
import 'modelclass1.dart';
import 'modelclass2.dart';

class ecom extends StatefulWidget {
  const ecom({super.key});

  @override
  State<ecom> createState() => _ecomState();
}

class _ecomState extends State<ecom> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
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
              suffixIcon: TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>lens()));
              },child: Icon(Icons.qr_code,color: Colors.black,)),
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
            SizedBox(height: 10,),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: com.length,
                itemBuilder: (BuildContext context, index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(com[index].image),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ),
                      Text(com[index].text),
                    ],
                  );
                },
              ),
            ),
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
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ecom5()));
                        },
                        child: Container(
                          height:10,
                          width: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(bar[itemIndex].image),
                                  fit: BoxFit.fill)),
                        ),
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
            Column(
              children: [
                Container(
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ecom2()));
                              },
                              child: Container(
                                height: 170,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/tv2.jpeg"),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                            ),
                            Text("25% Offer",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ecome()));
                  },
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage("assets/povo.gif"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                ),SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pay In Amazon",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                  ],
                ),

                SizedBox(height: 20,),
                Container(
                  height: 400,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 400,
                          childAspectRatio: 2 / 2,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3),
                      itemCount: wars.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>pay()));
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                // alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(),
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                    image: AssetImage(wars[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Text(wars[index].text,style: TextStyle(fontWeight: FontWeight.w500),),
                            Text(wars[index].mrp,style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        );
                      }),
                ),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/smrt.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}

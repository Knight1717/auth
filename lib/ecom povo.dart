import 'package:flutter/material.dart';
import 'ecom bottom.dart';


class ecome extends StatelessWidget {
  const ecome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ebot()));
        },child: Icon(Icons.arrow_back,color: Colors.black,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Latest Launches from New Pova 5 Series",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            ),
            Divider(
              height: 4,
              thickness: 2,
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),SizedBox(height: 10,),
            Text("POVO 5 PRO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),

            Container(
              height: 600,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("assets/povo1.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 40,
              width: 370,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ), child: Text("BuyNow",)),
            ),SizedBox(height: 20,),

            Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("assets/povo2.gif"),
                    fit: BoxFit.fill,
                  )
              ),
            ),SizedBox(height: 10,),
            Container(
              height: 160,
              width: 350,
              child: Text("TECNO Pova 5 Pro 5G (Silver Fantasy, 8GB RAM,128GB Storage)| Segment 1st 68W Ultra Fast Charging | India's 1st Multi-Colored Backlit ARC Interface | 50MP AI Dual Camera | 6.78”FHD+ Dot-in Display",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            ),SizedBox(height: 10,),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/povo5.gif"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Container(
              height: 550,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/povo3.gif"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Container(
              height: 550,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/povo4.gif"),
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

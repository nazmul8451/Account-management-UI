import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.notifications)]
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(child:Icon(Icons.person) ,),
                SizedBox(width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello',style: TextStyle(fontSize: 13,color: Colors.grey,),),
                    Text('Tasfia Ritu',style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 150,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF1E1F4F)
              ),
              child: Padding(padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/image/card_img.png',height: 30,width: 30,),
                      SizedBox(width: 5,),
                      Text('Master Card',style: TextStyle(color:Colors.white,fontSize: 10),),
                      Spacer(),
                      Image.asset('assets/image/sim_img.png',height: 30,width: 30,),
                    ],
                  ),

                  SizedBox(height: 40,),
                  // Text('Card Number',style: TextStyle(fontSize: 10,color: Colors.grey),),
                  // Text('B043 4523 4244 3454',style: TextStyle(fontSize: 13,color: Colors.white),)

                ],
              ),)
            ),
          ],
        ),
      ),

    );
  }
}

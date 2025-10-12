import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> transactions = [
      {
        'name': 'Alamin Sarkar',
        'date': '05 Jan 2024',
        'amount': '-\$200.00',
        'image': 'assets/img/user1.png',
      },
      {
        'name': 'Rubel Hasan',
        'date': '04 Feb 2024',
        'amount': '+\$300.00',
        'image': 'assets/img/user2.png',
      },
      {
        'name': 'Spotify',
        'date': '06 Feb 2024',
        'amount': '-\$300.00',
        'image': 'assets/img/spotify.png',
      },
      {
        'name': 'Farhan Sarkar',
        'date': '05 Mar 2024',
        'amount': '+\$400.00',
        'image': 'assets/img/user3.png',
      },
      {
        'name': 'Raju Ahmed',
        'date': '06 Apr 2024',
        'amount': '+\$500.00',
        'image': 'assets/img/user4.png',
      },
      {
        'name': 'Najmul Huda',
        'date': '24 May 2020',
        'amount': '+\$500.00',
        'image': 'assets/img/user5.png',
      },
      {
        'name': 'Ronald',
        'date': '08 Sep 2020',
        'amount': '+\$500.00',
        'image': 'assets/img/user6.png',
      },
      {
        'name': 'Jacob',
        'date': '17 Oct 2020',
        'amount': '-\$500.00',
        'image': 'assets/img/user7.png',
      },
      {
        'name': 'Mitchell',
        'date': '22 Oct 2020',
        'amount': '+\$500.00',
        'image': 'assets/img/user8.png',
      },
      {
        'name': 'Jane Cooper',
        'date': '22 Oct 2020',
        'amount': '+\$500.00',
        'image': 'assets/img/user9.png',
      },
    ];


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){
                    }, icon: const Icon(Icons.notifications)),
          )]
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
              height: 190,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF1E1F4F)
              ),
              child: Padding(padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Card Number',style: TextStyle(fontSize: 10,color: Colors.grey),),
                      Text('B043 4523 4244 3454',style: TextStyle(fontSize: 13,color: Colors.white),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tasfia Ritu',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100,color: Colors.white),),
                          Column(
                            children: [
                              Text('Valid Thurs',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey),),
                              Text('10/29',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey),),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
               
                ],
              ),)
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )]
                      ),
                      child: Center(child: Image.asset(
                          height: 30,width: 30,
                          'assets/image/transfer.png')),
                    ),
                    SizedBox(height: 5,),
                    Text('Transfer',style: TextStyle(fontSize: 13,color: Color(0xFF1E1F4F),fontWeight: FontWeight.w300),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )]
                      ),
                      child: Center(child: Image.asset(
                          height: 30,width: 30,
                          'assets/image/request.png')),
                    ),
                    SizedBox(height: 5,),
                    Text('Request',style: TextStyle(fontSize: 13,color: Color(0xFF1E1F4F),fontWeight: FontWeight.w300),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )]
                      ),
                      child: Center(child: Image.asset(
                          height: 30,width: 30,
                          'assets/image/send.png')),
                    ),
                    SizedBox(height: 5,),
                    Text('Send',style: TextStyle(fontSize: 13,color: Color(0xFF1E1F4F),fontWeight: FontWeight.w300),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )]
                      ),
                      child: Center(child: Image.asset(
                          height: 30,width: 30,
                          'assets/image/voucher.png')),
                    ),
                    SizedBox(height: 5,),
                    Text('Voucher',style: TextStyle(fontSize: 13,color: Color(0xFF1E1F4F),fontWeight: FontWeight.w300),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recently Transaction',style: TextStyle(color: Colors.black,fontSize: 14,),),
                TextButton(onPressed: (){},child: Text('See all',style: TextStyle(color: Colors.black,fontSize: 14,),)),

              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                  itemBuilder: (context,index){
                  var personInfo = transactions[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3), // নিচের দিকে
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, -3), // উপরের দিকে
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(

                    ),
                    title: Text(
                      personInfo['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(personInfo['date']),
                    trailing: Text(
                      personInfo['amount'],
                      style: TextStyle(
                        color: personInfo['amount'].contains('-') ? Colors.red : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
                  ;
              }),
            ),

          ],
        ),
      ),

    );
  }
}

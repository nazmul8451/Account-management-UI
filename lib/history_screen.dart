import 'package:flutter/material.dart';
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key,});
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
        backgroundColor: Colors.white,
        leading: BackButton(),
        centerTitle: true,
          title:Text('History',style: TextStyle(fontSize: 18),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(onPressed: (){
              }, icon: const Icon(Icons.notifications)),
            )]
      ),
      body:             Expanded(
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

            }),
      ),

    );
  }
}

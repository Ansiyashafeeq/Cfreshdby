import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:Icon(Icons.arrow_back),title: Text('Account'),
        centerTitle: true,backgroundColor: Color.fromRGBO(70, 183, 73, 1),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Container(
              height: 121,
              width: 354,
              decoration:  BoxDecoration(borderRadius:
              BorderRadius.circular(15),color: Color.fromRGBO(70, 183, 73, 0.3)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(backgroundColor: Colors.white,
                      backgroundImage:  AssetImage('assets/profile.jpg'),radius: 35,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi, Prabin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                      Text('xxxxxxxxxxx@gmail.com',style: TextStyle(fontSize: 14)),
                      Text('+91 9061xxxxxx',style: TextStyle(fontSize: 14)),
                    ],
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(child: Icon(Icons.phone_in_talk,color: Colors.white,),
                    backgroundColor: Colors.black,),
                  SizedBox(width: 15,),
                  Text('Contact us',style: TextStyle(fontSize: 18,color: Colors.black87),),
                  SizedBox(width: 148,),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(child: Icon(Icons.logout_outlined,color: Colors.white,),
                    backgroundColor: Colors.black,),
                  SizedBox(width: 15,),
                  Text('Logout',style: TextStyle(fontSize: 18,color: Colors.black),),
                  SizedBox(width: 174,),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          SizedBox(height: 365,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('powered by',style: TextStyle(fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1)),),
              Text('TEGRAND',style: TextStyle(fontSize: 14,color: Color.fromRGBO(11, 178, 168, 1)),)
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>
      [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Color.fromRGBO(70, 183, 73, 1),),label: 'Dashboard',),
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining,color: Color.fromRGBO(70, 183, 73, 1),),label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.person,
          color: Color.fromRGBO(70, 183, 73, 1),),label: 'Account'),
      ],
      selectedItemColor: Color.fromRGBO(70, 183, 73, 1),
    ),
    );
  }
}

import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'),centerTitle: true,backgroundColor:   Color.fromRGBO( 70, 183, 73,1),),
      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all( 8.0
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('50',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('Total orders',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                        ],
                      ),

                      height: 140,
                      width: 150,
                      decoration: BoxDecoration(color: Color.fromRGBO( 59, 172, 207,1),borderRadius: BorderRadius.circular(20)),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('35',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('pending orders',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                        ],
                      ),
                      height: 140,
                     width: 150,
                      decoration: BoxDecoration(color: Color.fromRGBO( 241, 209, 38,1),
                          borderRadius: BorderRadius.circular(20)),
                      
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('15',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('Completed orders',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                        ],
                      ),
                      height: 140,
                    width: 150,
                    decoration: BoxDecoration(color: Color.fromRGBO( 71, 201, 74,1),borderRadius: BorderRadius.circular(20)),
                    
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(' 3000',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('COD in hand',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      height: 140,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(245, 87, 87, 1)),
                    
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: 65,
                width: 340,
                child: ElevatedButton(onPressed: (){

                },style:
                ElevatedButton.styleFrom(primary:   Color.fromRGBO( 146, 138, 111,1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    child: Text('Reports',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>
      [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Color.fromRGBO(70, 183, 73, 1),),label: 'Dashboard',),
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining,color: Color.fromRGBO(70, 183, 73, 1),),label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Color.fromRGBO(70, 183, 73, 1),),label: 'Account'),
      ],
        selectedItemColor: Color.fromRGBO(70, 183, 73, 1),),
    );
  }
}
